# Launch JupyterLab with the project kernel directory active for this session only.
$ErrorActionPreference = 'Stop'
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$Python = Join-Path $RepoRoot '.venv\Scripts\python.exe'
if (-not (Test-Path -LiteralPath $Python)) { throw "Project Python not found: $Python" }
$env:JUPYTER_PATH = Join-Path $RepoRoot '.venv\share\jupyter'
& $Python -m jupyter lab --notebook-dir $RepoRoot @args
exit $LASTEXITCODE
