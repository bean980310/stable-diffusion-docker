#!/usr/bin/env bash

cd /workspace/stable-diffusion-webui/models/Stable-diffusion
# mkdir SD14
mkdir SD15
# mkdir SD2
mkdir SDXL
mkdir Pony
# mkdir SD3
mkdir upscale

cd /workspace/stable-diffusion-webui/models/VAE
mkdir SD15
mkdir SDXL

cd /workspace/stable-diffusion-webui/models/ControlNet
mkdir SD15
mkdir SDXL

cd /workspace/stable-diffusion-webui/models/Lora
mkdir SD15
mkdir SDXL
mkdir Pony

cd /workspace/stable-diffusion-webui/embeddings
mkdir SD15
mkdir SDXL

ln -s /sd-models/v1-5-pruned-emaonly.safetensors /workspace/stable-diffusion-webui/models/Stable-diffusion/SD15/v1-5-pruned-emaonly.safetensors
ln -s /sd-models/sd-v1-5-inpainting.ckpt /workspace/stable-diffusion-webui/models/Stable-diffusion/SD15/sd-v1-5-inpainting.ckpt
ln -s /sd-models/vae-ft-mse-840000-ema-pruned.safetensors /workspace/stable-diffusion-webui/models/VAE/SD15/vae-ft-mse-840000-ema-pruned.safetensors

ln -s /sd-models/sd_xl_base_1.0.safetensors /workspace/stable-diffusion-webui/models/Stable-diffusion/SDXL/sd_xl_base_1.0.safetensors
ln -s /sd-models/sd_xl_refiner_1.0.safetensors /workspace/stable-diffusion-webui/models/Stable-diffusion/SDXL/sd_xl_refiner_1.0.safetensors
ln -s /sd-models/sdxl_vae.safetensors /workspace/stable-diffusion-webui/models/VAE/SDXL/sdxl_vae.safetensors

echo "Initialize Complete"