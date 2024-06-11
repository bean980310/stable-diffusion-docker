#!/usr/bin/env bash
echo "Downloading SD 1.5 model"
cd /workspace/stable-diffusion-webui/models/Stable-diffusion
wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.safetensors
wget https://huggingface.co/runwayml/stable-diffusion-inpainting/resolve/main/sd-v1-5-inpainting.ckpt

# echo "Downloading SD 1.5 based model"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion
# wget https://civitai.com/api/download/models/34373?type=Model&format=PickleTensor&size=full&fp=fp16&token=
# wget https://civitai.com/api/download/models/30163?type=Model&format=SafeTensor&size=full&fp=fp16&token=
# wget https://civitai.com/api/download/models/90854?type=Model&format=SafeTensor&size=full&fp=fp16&token=
# wget https://civitai.com/api/download/models/17233?type=Model&format=SafeTensor&size=full&fp=fp16&token=
# wget https://civitai.com/api/download/models/57618?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=
# wget https://civitai.com/api/download/models/11745?type=Model&format=SafeTensor&size=full&fp=fp16&token=

# echo "Downloading SD XL based model"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion
# wget https://civitai.com/api/download/models/384264?type=Model&format=SafeTensor&size=full&fp=fp16&token=
# wget https://civitai.com/api/download/models/403131?type=Model&format=SafeTensor&size=full&fp=fp16&token=
# wget https://civitai.com/api/download/models/324619?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=

echo "Downloading SD 1.5 VAE"
cd /workspace/stable-diffusion-webui/models/VAE
wget https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors

# echo "Downloading SD 1.5 based VAE"
# cd /workspace/stable-diffusion-webui/models/VAE
# wget https://huggingface.co/hakurei/waifu-diffusion-v1-4/resolve/main/vae/kl-f8-anime2.ckpt
# wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/VAEs/orangemix.vae.pt