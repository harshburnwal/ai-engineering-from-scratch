# Run the course beginner verifier and summarize optional tools without changing the machine.
$ErrorActionPreference = 'Stop'
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
Set-Location -LiteralPath $RepoRoot
. (Join-Path $PSScriptRoot 'initialize-environment.ps1')
$Python = Join-Path $RepoRoot '.venv\Scripts\python.exe'
if (-not (Test-Path -LiteralPath $Python)) { throw 'Project venv missing. Recreate it from installation\portable\python\cpython-3.14.9-windows-x86_64-none\python.exe.' }
& $Python phases\00-setup-and-tooling\01-dev-environment\code\verify.py --route beginner --show-later
$CourseExit = $LASTEXITCODE
Write-Host "Official verifier exit code: $CourseExit"
exit $CourseExit
