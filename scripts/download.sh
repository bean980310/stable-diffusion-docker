#!/usr/bin/env bash

# cd /workspace/stable-diffusion-webui/models/Stable-diffusion
# mkdir SD14
# mkdir SD15
# mkdir SD2
# mkdir SDXL
# mkdir Pony
# mkdir SD3
# mkdir upscale

# cd /workspace/stable-diffusion-webui/models/VAE
# mkdir SD15
# mkdir SDXL

# cd /workspace/stable-diffusion-webui/models/ControlNet
# mkdir SD15
# mkdir SDXL

# cd /workspace/stable-diffusion-webui/models/Lora
# mkdir SD15
# mkdir SDXL
# mkdir Pony

# cd /workspace/stable-diffusion-webui/embeddings
# mkdir SD15
# mkdir SDXL

# echo "Downloading SD 1.4 model"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion/SD14
# wget https://huggingface.co/CompVis/stable-diffusion-v-1-4-original/resolve/main/sd-v1-4.ckpt
# wget https://huggingface.co/CompVis/stable-diffusion-v-1-4-original/resolve/main/sd-v1-4-full-ema.ckpt

# echo "Downloading SD 1.5 model"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion/SD15
# wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned.safetensors
# wget https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.safetensors
# wget https://huggingface.co/runwayml/stable-diffusion-inpainting/resolve/main/sd-v1-5-inpainting.ckpt

echo "Downloading SD 1.5 based model"
cd /workspace/stable-diffusion-webui/models/Stable-diffusion/SD15
wget https://civitai.com/api/download/models/34373?token= --content-disposition
wget https://civitai.com/api/download/models/30163?token= --content-disposition
wget https://civitai.com/api/download/models/90854?token= --content-disposition
wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/Models/AbyssOrangeMix3/AOM3A1B_orangemixs.safetensors
wget https://huggingface.co/gsdf/Counterfeit-V3.0/resolve/main/Counterfeit-V3.0_fp32.safetensors
wget https://huggingface.co/gsdf/Counterfeit-V3.0/resolve/main/Counterfeit-V3.0_fp16.safetensors
wget https://huggingface.co/gsdf/Counterfeit-V3.0/resolve/main/Counterfeit-V3.0_fix_fp16.safetensors
wget https://civitai.com/api/download/models/11745?token= --content-disposition
wget https://civitai.com/api/download/models/11732?token= --content-disposition

# echo "Downloading SD 2 model"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion/SD2
# wget https://huggingface.co/stabilityai/stable-diffusion-2/resolve/main/768-v-ema.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-2-base/resolve/main/512-base-ema.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-2-depth/resolve/main/512-depth-ema.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-2-inpainting/resolve/main/512-inpainting-ema.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-2-1/resolve/main/v2-1_768-ema-pruned.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-2-1-base/resolve/main/v2-1_512-ema-pruned.safetensors

# echo "Downloading SD XL model"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion/SDXL
# wget https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors

echo "Downloading SD XL based model"
cd /workspace/stable-diffusion-webui/models/Stable-diffusion/SDXL
wget https://civitai.com/api/download/models/384264?token= --content-disposition
wget https://huggingface.co/cagliostrolab/animagine-xl-3.1/resolve/main/animagine-xl-3.1.safetensors
wget https://civitai.com/api/download/models/412021?token= --content-disposition
wget https://civitai.com/api/download/models/546178?token= --content-disposition
wget https://huggingface.co/gsdf/CounterfeitXL-V2.0/resolve/main/CounterfeitXL-V2.5.safetensors

echo "Downloading Pony based model"
cd /workspace/stable-diffusion-webui/models/Stable-diffusion/Pony
wget --content-disposition https://civitai.com/api/download/models/290640?type=Model&format=SafeTensor&size=pruned&fp=fp16&token=
wget https://civitai.com/api/download/models/324619?token= --content-disposition
wget https://civitai.com/api/download/models/441236?token= --content-disposition

# echo "Downloading SD 3 model"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion/SD3
# wget https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/sd3_medium.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/sd3_medium_incl_clips.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/sd3_medium_incl_clips_t5xxlfp16.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/sd3_medium_incl_clips_t5xxlfp8.safetensors

# echo "Downloading SD 3 text encoders"
# cd /workspace/stable-diffusion-webui/models/Stable-diffusion
# wget https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/text_encoders/clip_l.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/text_encoders/clip_g.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/text_encoders/t5xxl_fp8_e4m3fn.safetensors
# wget https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/text_encoders/t5xxl_fp16.safetensors

echo "Downloading SD x4 Upscale model"
cd /workspace/stable-diffusion-webui/models/Stable-diffusion/upscale
wget https://huggingface.co/stabilityai/stable-diffusion-x4-upscaler/resolve/main/x4-upscaler-ema.safetensors

# echo "Downloading SD 1.5 VAE"
# cd /workspace/stable-diffusion-webui/models/VAE/SD15
# wget https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors
# wget https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors

echo "Downloading SD 1.5 based VAE"
cd /workspace/stable-diffusion-webui/models/VAE/SD15
wget https://huggingface.co/hakurei/waifu-diffusion-v1-4/resolve/main/vae/kl-f8-anime2.ckpt
wget https://huggingface.co/WarriorMama777/OrangeMixs/resolve/main/VAEs/orangemix.vae.pt

# echo "Downloading SD XL VAE"
# cd /workspace/stable-diffusion-webui/models/VAE/SDXL
# wget https://huggingface.co/madebyollin/sdxl-vae-fp16-fix/resolve/main/sdxl_vae.safetensors

echo "Downloading ControlNet model for SD 1.5"
cd /workspace/stable-diffusion-webui/models/ControlNet/SD15
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_ip2p_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_shuffle_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1e_sd15_tile_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1p_sd15_depth_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_canny_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_inpaint_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_lineart_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_mlsd_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_normalbae_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_openpose_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_scribble_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_seg_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_softedge_fp16.safetensors
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15s2_lineart_anime_fp16.safetensors

echo "Downloading ControlNet model for SD XL"
cd /workspace/stable-diffusion-webui/models/ControlNet/SDXL
wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-canny-rank256.safetensors
wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-depth-rank256.safetensors
wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-recolor-rank256.safetensors
wget https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-sketch-rank256.safetensors

wget -O controlnet-canny-sdxl-1.0_fp16.safetensors https://huggingface.co/diffusers/controlnet-canny-sdxl-1.0/resolve/main/diffusion_pytorch_model.fp16.safetensors
wget -O controlnet-depth-sdxl-1.0_fp16.safetensors https://huggingface.co/diffusers/controlnet-depth-sdxl-1.0/resolve/main/diffusion_pytorch_model.fp16.safetensors

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

wget -O controlnet-inpaint-dreamer-sdxl.safetensors https://huggingface.co/destitech/controlnet-inpaint-dreamer-sdxl/resolve/main/v2/diffusion_pytorch_model.fp16.safetensors

wget https://huggingface.co/kataragi/controlnet_canny/resolve/main/Kataragi_cannyXL-fp16.safetensors
wget https://huggingface.co/kataragi/flatline/resolve/main/diffusers_xl_flatline_testXL-fp16.safetensors
wget https://huggingface.co/kataragi/controlnetXL_inpaint/resolve/main/Kataragi_inpaintXL-fp16.safetensors
wget https://huggingface.co/kataragi/controlnetXL_line2color/resolve/main/controlnetXL_line2colorV2-fp16.safetensors
wget https://huggingface.co/kataragi/ControlNet-LineartXL/resolve/main/Katarag_lineartXL-fp16.safetensors
wget https://huggingface.co/kataragi/ControlNet-recolorXL/resolve/main/diffusers_xl_recolor_testXL-fp16.safetensors
wget https://huggingface.co/kataragi/ControlNet_tori29_blur/resolve/main/ControlNet_tori29_blur-fp16.safetensors

# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_canny.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_depth.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_depth_V2.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_dw_openpose.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_lineart_anime_denoise.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_mlsd_V2.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_normal.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_normal_dsine.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_recolor_luminance.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_segment_animeface.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_segment_animeface_V2.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_sketch.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_softedge.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_t2i-adapter_color_shuffle.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_tile_anime_alpha.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_tile_anime_beta.safetensors
# wget https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_tile_realistic.safetensors

echo "Downloading SD 1.5 LoRA"
cd /workspace/stable-diffusion-webui/models/Lora/SD15
wget -O lcm-lora-sdv1-5.safetensors https://huggingface.co/latent-consistency/lcm-lora-sdv1-5/resolve/main/pytorch_lora_weights.safetensors

echo "Downloading SD XL LoRA"
cd /workspace/stable-diffusion-webui/models/Lora/SDXL
wget -O lcm-lora-sdxl.safetensors https://huggingface.co/latent-consistency/lcm-lora-sdxl/resolve/main/pytorch_lora_weights.safetensors