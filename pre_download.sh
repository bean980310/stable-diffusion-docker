#!/usr/bin/env bash

mkdir sd-models

mkdir sd-models/Stable-diffusion
mkdir sd-models/VAE
mkdir sd-models/ControlNet
mkdir sd-models/Lora
mkdir sd-models/embeddings
mkdir sd-models/ESRGAN

mkdir sd-models/Stable-diffusion/SD15
mkdir sd-models/Stable-diffusion/SDXL
mkdir sd-models/Stable-diffusion/Pony
mkdir sd-models/Stable-diffusion/upscale

mkdir sd-models/VAE/SD15
mkdir sd-models/VAE/SDXL

mkdir sd-models/ControlNet/SD15
mkdir sd-models/ControlNet/SDXL

mkdir sd-models/Lora/SD15
mkdir sd-models/Lora/SDXL
mkdir sd-models/Lora/Pony

mkdir sd-models/embeddings/SD15
mkdir sd-models/embeddings/SDXL

echo "Downloading SD 1.5 model"
wget -P sd-models/Stable-diffusion/SD15 -N https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.safetensors
wget -P sd-models/Stable-diffusion/SD15 -N https://huggingface.co/runwayml/stable-diffusion-inpainting/resolve/main/sd-v1-5-inpainting.ckpt

echo "Downloading SD XL model"
wget -P sd-models/Stable-diffusion/SDXL -N https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors
wget -P sd-models/Stable-diffusion/SDXL -N https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors

echo "Downloading SD 1.5 VAE"
wget -P sd-models/VAE/SD15 -N https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors

echo "Downloading SD XL VAE"
wget -P sd-models/VAE/SDX -N https://huggingface.co/madebyollin/sdxl-vae-fp16-fix/resolve/main/sdxl_vae.safetensors

echo "Downloading SD 1.5 LoRA"
wget -O sd-models/Lora/SD15/lcm-lora-sdv1-5.safetensors -N https://huggingface.co/latent-consistency/lcm-lora-sdv1-5/resolve/main/pytorch_lora_weights.safetensors

echo "Downloading SD XL LoRA"
wget -O sd-models/Lora/SDXL/lcm-lora-sdxl.safetensors -N https://huggingface.co/latent-consistency/lcm-lora-sdxl/resolve/main/pytorch_lora_weights.safetensors