<#
.SYNOPSIS
    Check and sync skills published in MuWeiLee/MyWorkSkill into local Trae/Codex skills dirs.
    Offline-first: exits cleanly when GitHub is unreachable and reuses local skills.
.PARAMETER Mode
    check : compare remote manifest vs local installed skills, no writes.
    auto  : (default) download changed/missing files, then report.
#>
param(
    [string]$Repo   = 'MuWeiLee/MyWorkSkill',
    [string]$Branch = 'main',
    [ValidateSet('check', 'auto')]
    [string]$Mode   = 'auto'
)

$ErrorActionPreference = 'Stop'
$RawBase   = "https://raw.githubusercontent.com/$Repo/$Branch"
$StateFile = '_myskill_sync_state.json'
$Proxy     = 'http://10.106.60.172:8080'

function Invoke-Download($Uri, $Target) {
    # direct first, then corporate proxy; returns $true on success, $false when unreachable
    foreach ($useProxy in @($false, $true)) {
        try {
            if ($useProxy -and $PSVersionTable.PSVersion.Major -ge 7) {
                Invoke-WebRequest -Uri $Uri -OutFile $Target -TimeoutSec 30 -Proxy $Proxy -UseBasicParsing
            } else {
                if ($useProxy) { $env:HTTP_PROXY = $Proxy; $env:HTTPS_PROXY = $Proxy }
                else { Remove-Item Env:HTTP_PROXY, Env:HTTPS_PROXY -ErrorAction SilentlyContinue }
                Invoke-WebRequest -Uri $Uri -OutFile $Target -TimeoutSec 30 -UseBasicParsing
            }
            return $true
        } catch {
            if ($useProxy) { return $false }
        }
    }
    return $false
}

function Get-Manifest {
    foreach ($useProxy in @($false, $true)) {
        try {
            if ($useProxy) { return Invoke-RestMethod -Uri "$RawBase/manifest.json" -TimeoutSec 30 -Proxy $Proxy }
            return Invoke-RestMethod -Uri "$RawBase/manifest.json" -TimeoutSec 30
        } catch {
            if ($useProxy) { return $null }
        }
    }
    return $null
}

function Get-FileSha256($Path) { (Get-FileHash $Path -Algorithm SHA256).Hash.ToLower() }

# --- resolve manifest ---
try { $manifest = Get-Manifest } catch { $manifest = $null }
if (-not $manifest) { Write-Host '[myskill-sync] GitHub 不可达，沿用本地技能版本。'; exit 0 }

$roots = foreach ($p in @("$HOME\.trae\skills", "$HOME\.codex\skills")) { if (Test-Path $p) { $p } }
if (-not $roots) { Write-Host '[myskill-sync] 未找到 .trae\skills 或 .codex\skills 目录。'; exit 1 }

$changed = @(); $fresh = @()
foreach ($skill in $manifest.skills) {
    foreach ($root in $roots) {
        $dest   = Join-Path $root $skill.name
        $stateF = Join-Path $root $StateFile
        $state  = if (Test-Path $stateF) { Get-Content $stateF -Raw | ConvertFrom-Json } else { $null }

        $need = $true
        if ($state -and $state.skills.($skill.name)) {
            $need = $false
            foreach ($f in $skill.files) {
                $lp = Join-Path $dest $f.path
                if (-not (Test-Path $lp) -or (Get-FileSha256 $lp) -ne $f.sha256) { $need = $true; break }
            }
        }

        if (-not $need) { Write-Host "  [ok] $skill.name v$($skill.version) @$root"; $fresh += "$root/$($skill.name)"; continue }

        if ($Mode -eq 'check') {
            Write-Host "  [update avail] $skill.name $($skill.version) @$root  (run auto to apply)"
            $changed += "$root/$($skill.name)"
            continue
        }

        $ok = $true
        foreach ($f in $skill.files) {
            $target = Join-Path $dest $f.path
            New-Item -ItemType Directory -Path (Split-Path $target -Parent) -Force | Out-Null
            if (-not (Invoke-Download "$RawBase/$($f.path)" $target)) { $ok = $false; break }
        }
        if (-not $ok) { Write-Host "  [fail] $skill.name @$root (download failed)"; continue }

        if (-not $state) { $state = @{ skills = @{} } }
        $state.skills.($skill.name) = @{ version = $skill.version; files = @{} }
        foreach ($f in $skill.files) { $state.skills.($skill.name).files.($f.path) = $f.sha256 }
        $state | ConvertTo-Json -Depth 10 | Set-Content $stateF -Encoding UTF8
        Write-Host "  [updated] $skill.name -> v$($skill.version) @$root"
        $changed += "$root/$($skill.name)"
    }
}

Write-Host ''
Write-Host ("[myskill-sync] done. updated: {0}, fresh: {1}" -f $changed.Count, $fresh.Count)
if ($changed.Count -eq 0) { Write-Host '[myskill-sync] 全部技能已是最新，可直接使用。' }