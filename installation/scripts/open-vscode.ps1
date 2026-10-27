$ErrorActionPreference = 'Stop'
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
. (Join-Path $PSScriptRoot 'initialize-environment.ps1')
$Code = Join-Path $env:LOCALAPPDATA 'Programs\Microsoft VS Code\bin\code.cmd'
if (-not (Test-Path -LiteralPath $Code)) {
    throw "VS Code CLI not found at $Code. Install VS Code for your Windows user first."
}
$UserData = Join-Path $RepoRoot '.vscode\user-data'
$Extensions = Join-Path $RepoRoot '.vscode\extensions'
& $Code --user-data-dir $UserData --extensions-dir $Extensions $RepoRoot
