#!/usr/bin/env bash

echo "Downloading SD 1.5 based model"

wget -P sd-models/Stable-diffusion/SD15 -N --content-disposition https://civitai.com/api/download/models/34373?token=
wget -P sd-models/Stable-diffusion/SD15 -N --content-disposition https://civitai.com/api/download/models/30163?token=
wget -P sd-models/Stable-diffusion/SD15 -N --content-disposition https://civitai.com/api/download/models/90854?token=
wget -P sd-models/Stable-diffusion/SD15 -N https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix3/AOM3A1B_orangemixs.safetensors
wget -P sd-models/Stable-diffusion/SD15 -N https://huggingface.co/gsdf/Counterfeit-V3.0/resolve/main/Counterfeit-V3.0_fp32.safetensors
wget -P sd-models/Stable-diffusion/SD15 -N https://huggingface.co/gsdf/Counterfeit-V3.0/resolve/main/Counterfeit-V3.0_fp16.safetensors
wget -P sd-models/Stable-diffusion/SD15 -N https://huggingface.co/gsdf/Counterfeit-V3.0/resolve/main/Counterfeit-V3.0_fix_fp16.safetensors
wget -P sd-models/Stable-diffusion/SD15 -N --content-disposition https://civitai.com/api/download/models/11745?token=
wget -P sd-models/Stable-diffusion/SD15 -N --content-disposition https://civitai.com/api/download/models/11732?token=

echo "Downloading SD XL based model"

wget -P sd-models/Stable-diffusion/SDXL -N --content-disposition https://civitai.com/api/download/models/384264?token=
wget -P sd-models/Stable-diffusion/SDXL -N https://huggingface.co/cagliostrolab/animagine-xl-3.1/resolve/main/animagine-xl-3.1.safetensors
wget -P sd-models/Stable-diffusion/SDXL -N --content-disposition https://civitai.com/api/download/models/412021?token=
wget -P sd-models/Stable-diffusion/SDXL -N --content-disposition https://civitai.com/api/download/models/546178?token=
wget -P sd-models/Stable-diffusion/SDXL -N https://huggingface.co/gsdf/CounterfeitXL-V2.0/resolve/main/CounterfeitXL-V2.5.safetensors

echo "Downloading Pony based model"

wget -P sd-models/Stable-diffusion/Pony -N --content-disposition https://civitai.com/api/download/models/290640?type=Model&format=SafeTensor&size=pruned&fp=fp16&token= 
wget -P sd-models/Stable-diffusion/Pony -N --content-disposition https://civitai.com/api/download/models/324619?token=
wget -P sd-models/Stable-diffusion/Pony -N --content-disposition https://civitai.com/api/download/models/441236?token=

echo "Downloading SD x4 Upscale model"

wget -P sd-models/Stable-diffusion/upscale -N https://huggingface.co/stabilityai/stable-diffusion-x4-upscaler/resolve/main/x4-upscaler-ema.safetensors

echo "Downloading SD 1.5 based VAE"

wget -P sd-models/VAE/SD15 -N https://huggingface.co/hakurei/waifu-diffusion-v1-4/resolve/main/vae/kl-f8-anime2.ckpt
wget -P sd-models/VAE/SD15 -N https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/VAEs/orangemix.vae.pt