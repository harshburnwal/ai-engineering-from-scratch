# Run the project-local pnpm wrapper without changing PATH or installing globally.
$ErrorActionPreference = 'Stop'
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$Node = Get-Command node -ErrorAction Stop
$Pnpm = Join-Path $RepoRoot 'installation\portable\pnpm\node_modules\pnpm\bin\pnpm.mjs'
if (-not (Test-Path -LiteralPath $Pnpm)) { throw "Project pnpm entry point missing: $Pnpm" }
& $Node.Source $Pnpm @args
exit $LASTEXITCODE
