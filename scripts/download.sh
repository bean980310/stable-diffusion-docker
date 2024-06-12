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

# echo "Downloading SD 2 model"
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
# wget -O gammaxlNSFWFor_v10.safetensors https://civitai.com/api/download/models/412021?type=Model&format=SafeTensor&size=full&fp=fp16&token=

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

# echo "Downloading ControlNet model for SD 1.5"
# cd /workspace/stable-diffusion-webui/models/ControlNet
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_ip2p_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_shuffle_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1e_sd15_tile_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1p_sd15_depth_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_canny_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_inpaint_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_lineart_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_mlsd_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_normalbae_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_openpose_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_scribble_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_seg_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_softedge_fp16.safetensors
# wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15s2_lineart_anime_fp16.safetensors

# echo "Downloading ControlNet model for SD XL"
# cd /workspace/stable-diffusion-webui/models/ControlNet
# wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-canny-rank256.safetensors
# wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-depth-rank256.safetensors
# wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-recolor-rank256.safetensors
# wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-sketch-rank256.safetensors

# wget -O controlnet-canny-sdxl-1.0_fp16.safetensors https://huggingface.co/diffusers/controlnet-canny-sdxl-1.0/resolve/main/diffusion_pytorch_model.fp16.safetensors
# wget -O controlnet-depth-sdxl-1.0_fp16.safetensors https://huggingface.co/diffusers/controlnet-depth-sdxl-1.0/resolve/main/diffusion_pytorch_model.fp16.safetensors

# wget https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01008016e_sdxl_depth_anime.safetensors
# wget https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01016032e_sdxl_replicate_anime_0-500.safetensors
# wget https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_blur-anime_500-1000.safetensors
# wget https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_canny_anime.safetensors
# wget https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_fake_scribble_anime.safetensors
# wget https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_pose_anime.safetensors
# wget https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_pose_anime_v2_500-1000.safetensors
# wget https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_replicate_anime_v2.safetensors
# wget https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_blur-500-1000.safetensors
# wget https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_canny.safetensors
# wget https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_depth_500-1000.safetensors

# wget -O controlnet-inpaint-dreamer-sdxl.safetensors https://huggingface.co/destitech/controlnet-inpaint-dreamer-sdxl/resolve/main/v2/diffusion_pytorch_model.fp16.safetensors

# wget https://huggingface.co/kataragi/controlnet_canny/resolve/main/Kataragi_cannyXL-fp16.safetensors
# wget https://huggingface.co/kataragi/flatline/resolve/main/diffusers_xl_flatline_testXL-fp16.safetensors
# wget https://huggingface.co/kataragi/controlnetXL_inpaint/resolve/main/Kataragi_inpaintXL-fp16.safetensors
# wget https://huggingface.co/kataragi/controlnetXL_line2color/resolve/main/controlnetXL_line2colorV2-fp16.safetensors
# wget https://huggingface.co/kataragi/ControlNet-LineartXL/resolve/main/Katarag_lineartXL-fp16.safetensors
# wget https://huggingface.co/kataragi/ControlNet-recolorXL/resolve/main/diffusers_xl_recolor_testXL-fp16.safetensors
# wget https://huggingface.co/kataragi/ControlNet_tori29_blur/resolve/main/ControlNet_tori29_blur-fp16.safetensors