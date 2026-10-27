# Show command resolution and versions while avoiding environment variable values.
$names = 'git','python','py','uv','node','npm','pnpm','corepack','rustc','cargo','code','docker','nvidia-smi','julia'
foreach ($name in $names) { $c = Get-Command $name -ErrorAction SilentlyContinue; if ($c) { [pscustomobject]@{Name=$name;Type=$c.CommandType;Source=$c.Source} } else { [pscustomobject]@{Name=$name;Type='Missing';Source=''} } }
Write-Host 'Credential variable presence only:'
foreach ($name in 'ANTHROPIC_API_KEY','OPENAI_API_KEY','HF_TOKEN') { Write-Host ($name + ': ' + [bool](Get-Item ('Env:' + $name) -ErrorAction SilentlyContinue)) }
