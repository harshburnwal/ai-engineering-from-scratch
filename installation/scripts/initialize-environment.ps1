# Initialize the project venv in this PowerShell session. This script installs nothing.
$ErrorActionPreference = 'Stop'
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$Python = Join-Path $RepoRoot '.venv\Scripts\python.exe'
if (-not (Test-Path -LiteralPath $Python)) { throw "Project Python not found at $Python. Recreate it from installation\portable\python\cpython-3.14.9-windows-x86_64-none\python.exe." }
$env:VIRTUAL_ENV = Join-Path $RepoRoot '.venv'
$env:Path = (Join-Path $env:VIRTUAL_ENV 'Scripts') + [IO.Path]::PathSeparator + $env:Path
$CargoBin = Join-Path $env:USERPROFILE '.cargo\bin'
if (Test-Path -LiteralPath (Join-Path $CargoBin 'cargo.exe')) {
    $env:Path = $CargoBin + [IO.Path]::PathSeparator + $env:Path
}
$env:HF_HOME = Join-Path $RepoRoot 'installation\portable\huggingface'
Write-Host "Project environment ready: $(& $Python --version)"
Write-Host "Python: $Python"
