---
type: verification-evidence
project: AI Engineering from Scratch
updated: 2026-10-27
---

# Phase 0 setup evidence

## Lesson 01 beginner preflight

- Date: 2026-10-27 (Asia/Calcutta)
- Working directory: `D:/AI Engineering from Scratch/Dev_environment`
- Command: `installation/scripts/verify-environment.ps1`
- Result: exit code 0; Python 3.14.9 and Git 2.54.0.windows.1 passed required checks (2/2).
- Optional checks passed: Node 24.19.0, npx 12.1.0, NumPy 2.5.4, Matplotlib 3.11.2, Jupyter, PyTorch/CUDA, and Cargo 1.99.1. Julia is optional and absent.
- The verifier suggests a Phase 1 command after the preflight. Do not run it until Phase 0 lessons are completed.

## Lesson 03 GPU

- `nvidia-smi`: NVIDIA GeForce RTX 3050 6GB Laptop GPU, 6144 MiB, driver 591.44.
- PyTorch: 2.14.1+cu130; `torch.version.cuda` is 13.0; `torch.cuda.is_available()` is true.
- A 1024x1024 CUDA tensor matrix multiplication completed and returned a 1024x1024 result.
- Cloud/Colab resource setup remains optional and has not been done.

## Lesson 04 API tools

- Python API environment imports Anthropic 2.3.0 and python-dotenv 1.2.4.
- Local Node project imports `@anthropic-ai/sdk` 1.3.0.
- The TypeScript lesson ran in `MOCK=1` mode and printed its fixture response. No live request was sent.
- `.env` contains only blank placeholders and is ignored by Git. No API key was created or stored.

## Lesson 05 Jupyter

- Notebook: `phase0-python-smoke-python314.executed.ipynb`.
- Kernel: `ai-engineering-windows` under the project `.venv`.
- Result: project Python path printed; NumPy dot product returned 14; Matplotlib generated a plot.
- This is a setup smoke check, not lesson completion.

## Lesson 09 data tools

- Isolated Python environment imports datasets 5.1.0, huggingface-hub 2.3.0 and pyarrow 26.0.0.
- Hugging Face cache root is inside `installation/portable/huggingface` when the project initializer is used.
- No dataset or model was downloaded.

## Lesson 12 profiling tools

- Base `.venv` imports line-profiler 5.1.0, memory-profiler 0.61.0 and TensorBoard 2.21.0 alongside PyTorch.
- Pinned direct and transitive versions are in `installation/manifests/requirements-debugging.lock.txt`.

## Lesson 08 editor

- VS Code 1.143.1.
- All 12 workspace recommendations are installed under `.vscode/extensions` with isolated data under `.vscode/user-data`.
- Launch using `installation/scripts/open-vscode.ps1` to use the project-local extension profile.

## Rust and MSVC

- Rust 1.99.1 and Cargo 1.99.1 are installed under the user's `.cargo/bin`.
- Visual Studio Build Tools 18 are present; MSVC compiler reports 19.51.36260 through `VsDevCmd.bat`.
- The project initializer adds Cargo to the current process PATH only; saved/system PATH was not changed.

## Git preservation

- Before migration: clean worktree, no untracked files, local branches `main` and `my-progress` at the same commit.
- After migration: repository root is `D:/AI Engineering from Scratch/Dev_environment`; branch `my-progress` and origin fork preserved.
- The fork does not have a `my-progress` branch. No upstream, commit or push was made.

Phase 0 lesson progress remains unmarked. These checks verify environment readiness, not the learner exercises.
