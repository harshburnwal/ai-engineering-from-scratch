---
type: command-reference
project: AI Engineering from Scratch
updated: 2026-10-27
---

# PowerShell Command Reference

Run commands from the repository root.

| Task | PowerShell | Bash |
|---|---|---|
| Current folder | Get-Location | pwd |
| List files | Get-ChildItem -Force | ls -la |
| Change folder | Set-Location .\phases | cd phases |
| Create folder | New-Item -ItemType Directory -Force -Path data | mkdir -p data |
| Read text | Get-Content .\README.md | cat README.md |
| Filter lines | Select-String -Path .\*.md -Pattern Python | grep Python *.md |
| Pipe | Get-ChildItem | Where-Object Name -like *.py | find . -name *.py |
| Overwrite output | command > .\output.txt | command > output.txt |
| Append output | command >> .\output.txt | command >> output.txt |
| Environment variable names | Get-ChildItem Env: | env |
| Set session variable | $env:NAME='value' | export NAME=value |
| Run project Python | .\.venv\Scripts\python.exe script.py | .venv/bin/python script.py |
| Python version | .\.venv\Scripts\python.exe --version | python --version |
| Git status | git status --short --branch | git status --short --branch |
| Exit code | $LASTEXITCODE | $? |

Check for a secret variable without showing its value: $null -ne (Get-Item Env:ANTHROPIC_API_KEY -ErrorAction SilentlyContinue).
