#!/usr/bin/env bash
echo "Downloading SD 1.5 model"
cd /workspace/stable-diffusion-webui/models/Stable-diffusion
wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.safetensors
wget https://huggingface.co/runwayml/stable-diffusion-inpainting/resolve/main/sd-v1-5-inpainting.ckpt

# echo "Downloading SD 1.5 based model"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion
# wget -O AnythingXL_v30.ckpt https://civitai.com/api/download/models/34373?type=Model&format=PickleTensor&size=full&fp=fp16&token=
# wget -O AnythingXL_v50.safetensors https://civitai.com/api/download/models/30163?type=Model&format=SafeTensor&size=full&fp=fp16&token=
# wget -O AnythingXL_inkBase.safetensors https://civitai.com/api/download/models/90854?type=Model&format=SafeTensor&size=full&fp=fp16&token=
# wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix3/AOM3A1B_orangemixs.safetensors
# wget -O counterfeitV30_v30.safetensors https://civitai.com/api/download/models/57618?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=
# wget -O chilloutmix_NiPrunedFp32Fix.safetensors https://civitai.com/api/download/models/11745?type=Model&format=SafeTensor&size=full&fp=fp16&token=

# echo "Downloading SD 2.1 model"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion
# wget https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.safetensors

# echo "Downloading SD XL model"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion
# wget https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors

# echo "Downloading SD XL based model"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion
# wget -O AnythingXL_xl.safetensors https://civitai.com/api/download/models/384264?type=Model&format=SafeTensor&size=full&fp=fp16&token=
# wget https://huggingface.co/cagliostrolab/animagine-xl-3.1/resolve/main/animagine-xl-3.1.safetensors
# wget -O autismmixSDXL_autismmixPony.safetensors https://civitai.com/api/download/models/324619?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=
# wget -O gammaxlNSFWFor_v10 https://civitai.com/api/download/models/412021?type=Model&format=SafeTensor&size=full&fp=fp16&token=

echo "Downloading SD 1.5 VAE"
cd /workspace/stable-diffusion-webui/models/VAE
# wget https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors
wget https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors

# echo "Downloading SD 1.5 based VAE"
# cd /workspace/stable-diffusion-webui/models/VAE
# wget https://huggingface.co/hakurei/waifu-diffusion-v1-4/resolve/main/vae/kl-f8-anime2.ckpt
# wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/VAEs/orangemix.vae.pt

# echo "Downloading SD XL VAE"
# wget https://huggingface.co/madebyollin/sdxl-vae-fp16-fix/resolve/main/sdxl_vae.safetensors