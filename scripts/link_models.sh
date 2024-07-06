#!/usr/bin/env bash

ln -s /sd-models/v1-5-pruned-emaonly.safetensors /workspace/stable-diffusion-webui/models/Stable-diffusion/v1-5-pruned-emaonly.safetensors
ln -s /sd-models/sd-v1-5-inpainting.ckpt /workspace/stable-diffusion-webui/models/Stable-diffusion/sd-v1-5-inpainting.ckpt
ln -s /sd-models/vae-ft-mse-840000-ema-pruned.safetensors /workspace/stable-diffusion-webui/models/VAE/vae-ft-mse-840000-ema-pruned.safetensors

ln -s /sd-models/sd_xl_base_1.0.safetensors /workspace/stable-diffusion-webui/models/Stable-diffusion/sd_xl_base_1.0.safetensors
ln -s /sd-models/sd_xl_refiner_1.0.safetensors /workspace/stable-diffusion-webui/models/Stable-diffusion/sd_xl_refiner_1.0.safetensors
ln -s /sd-models/sdxl_vae.safetensors /workspace/stable-diffusion-webui/models/VAE/sdxl_vae.safetensors