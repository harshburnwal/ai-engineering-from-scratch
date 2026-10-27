---
type: phase-checklist
project: AI Engineering from Scratch
updated: 2026-10-27
---

# Phase 0 Checklist

Complete lessons in official order. Status remains not started until you do the lesson exercises and verify them.

## 01. Dev Environment

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/01-dev-environment

Course objectives (from lesson source):
- Set up Python 3.11+, Node.js 20+, and Rust toolchains from scratch
- Configure virtual environments and package managers for reproducible builds
- Verify GPU access with CUDA/MPS and run a test tensor operation
- Understand the four-layer stack: system, packages, runtimes, AI libraries

- Required tools: Python 3.11+, Git, Node.js 20+, uv, pnpm, Rust; GPU optional.
- Installation status: Python, Git, Node, uv and local pnpm verified; Rust 1.99.1 and MSVC Build Tools verified; PyTorch 2.14.1+cu130 detects CUDA on the RTX 3050. The verifier passes its required Python and Git checks.
- Exercises performed: None recorded yet.
- Verification: official code/verify.py with --route beginner; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Read lesson and perform its first exercise.

---

## 02. Git & Collaboration

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/02-git-and-collaboration

Course objectives (from lesson source):
- Configure git identity and use the daily workflow of add, commit, and push
- Create and merge branches for isolated experiments without breaking main
- Write a `.gitignore` that excludes model checkpoints and large binary files
- Navigate the commit history with `git log` to understand project evolution

- Required tools: Git and GitHub account.
- Installation status: Git verified; branch my-progress preserved; current setup changes are uncommitted. Fork has no remote my-progress branch, so no tracking or push.
- Exercises performed: None recorded yet.
- Verification: No separate verifier in lesson code.; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Read the Git lesson and perform its first exercise.

---

## 03. GPU Setup & Cloud

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/03-gpu-setup-and-cloud

Course objectives (from lesson source):
- Verify local GPU availability using `nvidia-smi` and PyTorch's CUDA API
- Configure Google Colab with a T4 GPU for free cloud-based experiments
- Benchmark matrix multiplication on CPU vs GPU and measure the speedup
- Estimate the largest model that fits in your VRAM using the fp16 rule of thumb

- Required tools: nvidia-smi, PyTorch CUDA; Colab is optional.
- Installation status: RTX 3050, driver 591.44 and PyTorch CUDA 13.0 verified; a 1024x1024 CUDA tensor multiply passed. Colab remains browser-only; no cloud resource created.
- Exercises performed: None recorded yet.
- Verification: official code/gpu_check.py; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Continue with the lesson's GPU benchmark and VRAM estimate; Colab is optional.

---

## 04. APIs & Keys

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/04-apis-and-keys

Course objectives (from lesson source):
- Store API keys securely using environment variables and `.env` files
- Make an LLM API call using both the Anthropic Python SDK and raw HTTP
- Compare SDK-based and raw HTTP request/response formats for debugging
- Identify and handle common API errors including authentication and rate limits

- Required tools: Python or TypeScript runtime, provider SDK, environment variables.
- Installation status: Isolated Python environment with Anthropic 2.3.0 and python-dotenv 1.2.4; local TypeScript project with @anthropic-ai/sdk 1.3.0; blank ignored .env template. Mock TypeScript path passed; no key or live API call.
- Exercises performed: None recorded yet.
- Verification: No separate verifier in lesson code.; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Add your own API key to the ignored `.env` only when ready, then make the lesson's live request.

---

## 05. Jupyter Notebooks

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/05-jupyter-notebooks

Course objectives (from lesson source):
- Install and launch JupyterLab, Jupyter Notebook, or VS Code with the Jupyter extension
- Use magic commands (`%timeit`, `%%time`, `%matplotlib inline`) to benchmark and visualize inline
- Distinguish when to use notebooks vs scripts and apply the "explore in notebooks, ship in scripts" workflow
- Identify and avoid common notebook traps: out-of-order execution, hidden state, and memory leaks

- Required tools: JupyterLab or Notebook, project Python kernel, NumPy, Matplotlib.
- Installation status: JupyterLab, Notebook, project kernel, NumPy and Matplotlib installed; project-kernel smoke notebook passed.
- Exercises performed: None recorded yet.
- Verification: learning-hub/EVIDENCE/phase0-python-smoke-python314.executed.ipynb; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Read the notebook lesson and try its timing and plotting magics.

---

## 06. Python Environments

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/06-python-environments

Course objectives (from lesson source):
- Create isolated virtual environments using `uv`, `venv`, or `conda`
- Write a `pyproject.toml` with optional dependency groups and generate lockfiles for reproducibility
- Diagnose and fix common pitfalls: global installs, pip/conda mixing, CUDA version mismatches
- Implement a per-phase environment strategy for projects with conflicting dependencies

- Required tools: Python and uv; course venv activation.
- Installation status: Python 3.14.9 and uv verified; project .venv plus separate lesson 04 and lesson 09 environments each have uv.lock files.
- Exercises performed: None recorded yet.
- Verification: No separate verifier in lesson code.; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Read the environment lesson and compare the base, API, and data environments.

---

## 07. Docker for AI

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/07-docker-for-ai

Course objectives (from lesson source):
- Build a GPU-enabled Docker image with CUDA, PyTorch, and AI libraries from a Dockerfile
- Mount host directories as volumes to persist models, datasets, and code across container rebuilds
- Configure the NVIDIA Container Toolkit to expose GPUs inside containers
- Orchestrate multi-service AI applications (inference server + vector database) using Docker Compose

- Required tools: Docker engine/Desktop.
- Installation status: Skipped for now at user's direction. Docker is not installed; WSL and Windows virtualization features remain untouched.
- Exercises performed: None recorded yet.
- Verification: No separate verifier in lesson code.; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Leave skipped until Docker is needed and a permitted container backend is available.

---

## 08. Editor Setup

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/08-editor-setup

Course objectives (from lesson source):
- Install VS Code with essential extensions for Python, Jupyter, linting, and remote SSH
- Configure format-on-save, type checking, and notebook output scrolling for AI workflows
- Set up Remote SSH to edit and debug code on remote GPU machines as if they were local
- Evaluate editor alternatives (Cursor, Windsurf, Neovim) and their tradeoffs for AI work

- Required tools: VS Code, Python and Jupyter extensions.
- Installation status: VS Code 1.143.1; settings and 12 recommended extensions installed in the workspace-local profile. Launch with installation/scripts/open-vscode.ps1.
- Exercises performed: None recorded yet.
- Verification: No separate verifier in lesson code.; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Open the repository with `installation/scripts/open-vscode.ps1` and review the local settings.

---

## 09. Data Management

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/09-data-management

Course objectives (from lesson source):
- Load, stream, and cache datasets using the Hugging Face `datasets` library
- Convert between CSV, JSON, Parquet, and Arrow formats and explain their tradeoffs
- Create reproducible train/validation/test splits with fixed random seeds
- Manage large model and dataset files using `.gitignore`, Git LFS, or DVC

- Required tools: Python data tooling and Hugging Face datasets only when exercising lesson.
- Installation status: Separate Python environment with datasets 5.1.0, huggingface-hub 2.3.0 and pyarrow 26.0.0. HF_HOME points inside installation/portable; no dataset or model downloaded.
- Exercises performed: None recorded yet.
- Verification: No separate verifier in lesson code.; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Choose a small public dataset for the exercise; no data has been downloaded yet.

---

## 10. Terminal & Shell

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/10-terminal-and-shell

Course objectives (from lesson source):
- Use piping, redirects, and `grep` to filter and process training logs from the command line
- Create persistent tmux sessions with multiple panes for concurrent training and GPU monitoring
- Monitor system and GPU resources with `htop`, `nvtop`, and `nvidia-smi`
- Transfer files between local and remote machines using SSH, `scp`, and `rsync`

- Required tools: PowerShell locally; SSH tools only for remote exercises.
- Installation status: PowerShell and Windows OpenSSH ssh/scp are available. tmux, htop and nvtop remain Linux-specific and are skipped under the no-WSL setup.
- Exercises performed: None recorded yet.
- Verification: No separate verifier in lesson code.; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Practice the PowerShell equivalents for filtering output, redirects, process monitoring, and SSH/SCP.

---

## 11. Linux for AI

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/11-linux-for-ai

Course objectives (from lesson source):
- Navigate the Linux file system and perform essential file operations from the command line
- Manage file permissions with `chmod` and `chown` to resolve "Permission denied" errors
- Install system packages with `apt` and set up a fresh GPU box for AI work
- Identify macOS-to-Linux differences that commonly trip up developers working on remote machines

- Required tools: Linux concepts; remote Linux host only if exercising cloud material.
- Installation status: Skipped for now at user's direction; no WSL or Linux environment installed or used.
- Exercises performed: None recorded yet.
- Verification: No separate verifier in lesson code.; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Leave skipped for now; no WSL/Linux environment will be installed.

---

## 12. Debugging & Profiling

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/12-debugging-and-profiling

Course objectives (from lesson source):
- Use conditional `breakpoint()` and `debug_print` to inspect tensor shapes, dtypes, and NaN values mid-training
- Profile training loops with `cProfile`, `line_profiler`, and `tracemalloc` to find bottlenecks
- Detect common AI bugs: shape mismatches, NaN loss, data leakage, and wrong-device tensors
- Set up TensorBoard to visualize loss curves, weight histograms, and gradient distributions

- Required tools: Python debugger/profilers; PyTorch/TensorBoard where lesson requires.
- Installation status: Project .venv includes PyTorch CUDA, line-profiler 5.1.0, memory-profiler 0.61.0 and TensorBoard 2.21.0; CUDA tensor operation passed.
- Exercises performed: None recorded yet.
- Verification: No separate verifier in lesson code.; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Run the lesson's profiling examples in the course `.venv`.

---

## 13. Python for AI Engineering

Official lesson: https://aiengineeringfromscratch.com/lesson?path=phases/00-setup-and-tooling/13-python-for-ai-engineering

Course objectives (from lesson source):
- Read and write the idioms that most course code uses, from unpacking and f-strings to dataclasses and comprehensions.
- Find three Python mistakes that give wrong results with no error: shared lists, mutable defaults, and used-up generators.
- Build a CSV and JSON loader, a seeded split, and a mini-batch generator with only the standard library.
- Write dot product, mean, and standard deviation in pure Python, and measure their speed and memory use.
- Explain why a pure-Python loop over numbers is slow, and how NumPy broadcasting moves the loop into compiled code.

- Required tools: Python standard library and NumPy.
- Installation status: Python 3.14.9 and NumPy installed; lesson exercise pending.
- Exercises performed: None recorded yet.
- Verification: official code/tests/test_main.py; learner exercises still not completed.
- Evidence: None yet.
- Questions: Record here while learning.
- Status: Not started.
- Next action: Read lesson and perform its first exercise.
