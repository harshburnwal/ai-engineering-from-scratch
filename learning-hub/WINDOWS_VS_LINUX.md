---
type: platform-reference
project: AI Engineering from Scratch
updated: 2026-10-27
---

# Windows and Linux Concepts

The official lesson is authoritative. These equivalents let you practice locally in PowerShell.

| Concept | Linux/Bash | Windows/PowerShell |
|---|---|---|
| Home folder | ~ | $HOME |
| List hidden files | ls -la | Get-ChildItem -Force |
| Copy directory | cp -r source dest | Copy-Item -Recurse source dest |
| Move or rename | mv source dest | Move-Item source dest |
| Delete file | rm file | Remove-Item -LiteralPath file |
| Search text | grep | Select-String |
| Environment variable | export X=value | $env:X='value' |
| Python | python3 | .\.venv\Scripts\python.exe |
| Activate venv | source .venv/bin/activate | .\.venv\Scripts\Activate.ps1 |
| Processes | ps, jobs, kill | Get-Process, Start-Job, Stop-Process |
| Permissions | chmod/chown | NTFS ACLs and Get-Acl/Set-Acl |

Lesson 11 teaches Linux for remote machines. This project does not use WSL. Learn concepts from the course and translate locally where practical.
