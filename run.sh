#script by XiaozhouTAT

export ERROR_REPORTING=FALSE

export DTYPE=float32
export CLIP_CONTEXTS=3
export AMP=1
export MODEL=stable-diffusion
export DEV=True
export MODEL_PATH=models/animefull-final-pruned

export ENABLE_EMA=1
export VAE_PATH=models/animevae.pt
export PENULTIMATE=1
export PYTHONDONTWRITEBYTECODE=1
export LOWVRAM=0
export SAVE_FILES=1

HSA_OVERRIDE_GFX_VERSION=10.3.0 python -m uvicorn --host 0.0.0.0 --port=6969 --workers 1 main:app