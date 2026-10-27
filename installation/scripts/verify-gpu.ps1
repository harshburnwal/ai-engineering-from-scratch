# Report NVIDIA and PyTorch GPU status without installing packages or changing drivers.
$ErrorActionPreference = 'Continue'
$RepoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$Python = Join-Path $RepoRoot '.venv\Scripts\python.exe'
$nvsmi = Get-Command nvidia-smi -ErrorAction SilentlyContinue
if ($nvsmi) { & $nvsmi.Source --query-gpu=name,memory.total,driver_version --format=csv,noheader } else { Write-Warning 'nvidia-smi is unavailable' }
$hasTorch = & $Python -c "import importlib.util; print(importlib.util.find_spec('torch') is not None)"
if ($hasTorch -eq 'True') {
  & $Python -c 'import torch; print("PyTorch", torch.__version__, "CUDA build", torch.version.cuda, "available", torch.cuda.is_available()); print("GPU", torch.cuda.get_device_name(0) if torch.cuda.is_available() else "CPU only")'
} else { Write-Host 'PyTorch is not installed in the project environment.' }
