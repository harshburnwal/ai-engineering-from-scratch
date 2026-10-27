---
type: environment-status
project: AI Engineering from Scratch
updated: 2026-10-27
---

# Environment Status

Last checked 2026-10-27. All files and caches listed here are scoped to `Dev_environment`, except the user-installed Rust and MSVC tools.

| Component | Status | Details |
|---|---|---|
| Repository | Verified | `D:/AI Engineering from Scratch/Dev_environment`, branch `my-progress`, origin fork preserved. Setup files are uncommitted. No push or commit. |
| Python | Verified | 3.14.9 portable runtime under `installation/portable/python`; course `.venv` uses it. |
| uv | Verified | 0.13.5. uv cache is under `installation/portable/uv-cache`. |
| Git | Verified | 2.54.0.windows.1. |
| NumPy / Matplotlib | Verified | NumPy 2.5.4, Matplotlib 3.11.2 in course `.venv`. |
| Jupyter | Verified | Jupyter 1.1.1, JupyterLab 4.6.4, Notebook 7.6.3; project kernel notebook smoke check passed. |
| Node.js / npm / pnpm | Verified | Node 24.19.0, npm 12.1.0, project-local pnpm 12.15.0. Global pnpm shim remains unchanged. |
| Rust / Cargo | Verified | Rust 1.99.1 under the user's `.cargo/bin`; project initializer adds that folder to the current process only. No saved or system PATH change. |
| MSVC | Verified | User-installed Visual Studio Build Tools 18; compiler 19.51.36260 available through `VsDevCmd.bat`. |
| GPU / PyTorch | Verified | RTX 3050 Laptop GPU, 6144 MiB, driver 591.44. PyTorch 2.14.1+cu130, CUDA 13.0; 1024x1024 CUDA tensor multiply passed. |
| API lesson | Installed | Isolated Python env has Anthropic 2.3.0 and python-dotenv 1.2.4; local TypeScript project has `@anthropic-ai/sdk` 1.3.0. `.env` is blank and ignored. No live API call or key stored. |
| Data lesson | Installed | Isolated Python env has datasets 5.1.0, huggingface-hub 2.3.0, pyarrow 26.0.0. HF cache path is inside `installation/portable/huggingface`. No dataset/model downloaded. |
| Profiling | Installed | Course `.venv` has line-profiler 5.1.0, memory-profiler 0.61.0 and TensorBoard 2.21.0; versions are pinned in `installation/manifests/requirements-debugging.lock.txt`. |
| VS Code | Verified | 1.143.1 with 12 recommended extensions in `.vscode/extensions` and isolated profile `.vscode/user-data`. Open using `installation/scripts/open-vscode.ps1`. |
| Windows shell | Available | PowerShell and Windows OpenSSH `ssh`/`scp`. tmux, htop and nvtop remain Linux-specific. |
| Docker / Linux | Skipped for now | Per user direction. No WSL or Windows virtualization features enabled. |
| Julia | Not installed | Optional for this setup. |

The official beginner verifier requires only Python 3.11+ and Git. It also detects Node, Jupyter, PyTorch/CUDA and Rust when run through `installation/scripts/verify-environment.ps1`.

API credentials and cloud accounts must be supplied by the user when those exercises are reached. Do not paste keys into chat. Phase 0 lesson exercises remain unmarked until completed by the learner.
