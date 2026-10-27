---
type: troubleshooting
project: AI Engineering from Scratch
updated: 2026-10-27
---

# Troubleshooting

- Wrong Python: run .\.venv\Scripts\python.exe --version and print sys.executable.
- Missing package: run uv pip list --python .\.venv\Scripts\python.exe; install lesson-required packages into this environment.
- PowerShell blocks activation scripts: invoke the explicit Python executable; do not bypass execution policy.
- pnpm module not found: the current command shim points to a missing file. Check if project-local Corepack can run without writing outside this workspace before using it.
- CUDA unavailable: check nvidia-smi, torch.version.cuda and torch.cuda.is_available(). The driver compatibility label is not the installed CUDA Toolkit version.
- Git has no upstream: inspect git branch -vv and remote branches before setting tracking. Never push without explicit authorization.
- WSL/Docker instructions: skip WSL installation. Use a Windows native alternative or document the Linux-only exercise.
- API keys: use current-session environment variables or an ignored .env; never paste values into notes, notebooks, scripts or logs.
