---
type: installation-guide
project: AI Engineering from Scratch
updated: 2026-10-27
---

# Windows Environment Setup

Project-owned packages, environments, caches, editor extensions and setup helpers live under `Dev_environment`. Rust and MSVC were installed by the user. No persistent PATH, registry, WSL or virtualization changes were made.

## Start a project session

From Windows PowerShell:

~~~powershell
Set-Location 'D:\AI Engineering from Scratch\Dev_environment'
.\installation\scripts\initialize-environment.ps1
~~~

This selects the project `.venv`, adds its Scripts folder and the existing `%USERPROFILE%\.cargo\bin` to this PowerShell process, and points `HF_HOME` into `installation\portable\huggingface`. It does not change saved or system settings.

## Lesson environments

- Base Phase 0 to 3 environment: `.venv`, using Python 3.14.9, NumPy, Matplotlib, Jupyter, CUDA PyTorch and profiling tools.
- Lesson 04 API environment: `phases\00-setup-and-tooling\04-apis-and-keys\.venv`; `pyproject.toml` and `uv.lock` pin Anthropic Python SDK dependencies. Its local Node project uses `pnpm-lock.yaml` for `@anthropic-ai/sdk`.
- Lesson 09 data environment: `phases\00-setup-and-tooling\09-data-management\.venv`; `pyproject.toml` and `uv.lock` pin datasets and Hugging Face dependencies.
- Lesson 12 profiling tools use the base environment. Direct packages and resolved versions are listed in `manifests\requirements-debugging.txt` and `manifests\requirements-debugging.lock.txt`.

No API keys, datasets, or model weights are included. The root `.env` is ignored by Git and starts with blank values copied from `.env.example`. Fill it locally when the API lesson requires a key. Do not share keys in chat. A real API request may incur provider charges.

## Open the project editor

Run `.\installation\scripts\open-vscode.ps1` from the repository root. It opens VS Code with an isolated profile and extensions under `.vscode\user-data` and `.vscode\extensions`, leaving your normal VS Code profile alone. The workspace settings select the project Python interpreter and PowerShell terminal.

## Verify

~~~powershell
.\installation\scripts\verify-environment.ps1
.\installation\scripts\verify-gpu.ps1
~~~

The beginner verifier requires Python 3.11+ and Git. It also checks Node, Jupyter, PyTorch/CUDA and Cargo. Its suggested Phase 1 command is only a pointer; complete Phase 0 lessons in order first.

## Optional or skipped for now

- GPU cloud and Google Colab require no local install. No cloud resource was created.
- Docker and Linux/WSL are skipped under the current Windows-only setup.
- Julia, Git LFS and DVC are not required for the current lessons.

No Git identity, upstream or remote push was configured. No commit has been made.
