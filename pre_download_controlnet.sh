#!/usr/bin/env bash

echo "Downloading ControlNet model for SD 1.5"

wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_ip2p_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11e_sd15_shuffle_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1e_sd15_tile_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11f1p_sd15_depth_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_canny_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_inpaint_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_lineart_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_mlsd_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_normalbae_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_openpose_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_scribble_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_seg_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15_softedge_fp16.safetensors
wget -P sd-models/ControlNet/SD15 https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/resolve/main/control_v11p_sd15s2_lineart_anime_fp16.safetensors

echo "Downloading ControlNet model for SD XL"

wget -P sd-models/ControlNet/SDXL https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-canny-rank256.safetensors
wget -P sd-models/ControlNet/SDXL https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-depth-rank256.safetensors
wget -P sd-models/ControlNet/SDXL https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-recolor-rank256.safetensors
wget -P sd-models/ControlNet/SDXL https://huggingface.co/stabilityai/control-lora/resolve/main/control-LoRAs-rank256/control-lora-sketch-rank256.safetensors

wget -P sd-models/ControlNet/SDXL -O controlnet-canny-sdxl-1.0_fp16.safetensors https://huggingface.co/diffusers/controlnet-canny-sdxl-1.0/resolve/main/diffusion_pytorch_model.fp16.safetensors
wget -P sd-models/ControlNet/SDXL -O controlnet-depth-sdxl-1.0_fp16.safetensors https://huggingface.co/diffusers/controlnet-depth-sdxl-1.0/resolve/main/diffusion_pytorch_model.fp16.safetensors

# wget -P sd-models/ControlNet/SDXL https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01008016e_sdxl_depth_anime.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01016032e_sdxl_replicate_anime_0-500.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_blur-anime_500-1000.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_canny_anime.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_fake_scribble_anime.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_pose_anime.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_pose_anime_v2_500-1000.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_replicate_anime_v2.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_blur-500-1000.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_canny.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/kohya-ss/controlnet-lllite/resolve/main/controllllite_v01032064e_sdxl_depth_500-1000.safetensors

wget -P sd-models/ControlNet/SDXL -O controlnet-inpaint-dreamer-sdxl.safetensors https://huggingface.co/destitech/controlnet-inpaint-dreamer-sdxl/resolve/main/v2/diffusion_pytorch_model.fp16.safetensors

wget -P sd-models/ControlNet/SDXL https://huggingface.co/kataragi/controlnet_canny/resolve/main/Kataragi_cannyXL-fp16.safetensors
wget -P sd-models/ControlNet/SDXL https://huggingface.co/kataragi/flatline/resolve/main/diffusers_xl_flatline_testXL-fp16.safetensors
wget -P sd-models/ControlNet/SDXL https://huggingface.co/kataragi/controlnetXL_inpaint/resolve/main/Kataragi_inpaintXL-fp16.safetensors
wget -P sd-models/ControlNet/SDXL https://huggingface.co/kataragi/controlnetXL_line2color/resolve/main/controlnetXL_line2colorV2-fp16.safetensors
wget -P sd-models/ControlNet/SDXL https://huggingface.co/kataragi/ControlNet-LineartXL/resolve/main/Katarag_lineartXL-fp16.safetensors
wget -P sd-models/ControlNet/SDXL https://huggingface.co/kataragi/ControlNet-recolorXL/resolve/main/diffusers_xl_recolor_testXL-fp16.safetensors
wget -P sd-models/ControlNet/SDXL https://huggingface.co/kataragi/ControlNet_tori29_blur/resolve/main/ControlNet_tori29_blur-fp16.safetensors

# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_canny.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_depth.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_depth_V2.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_dw_openpose.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_lineart_anime_denoise.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_mlsd_V2.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_normal.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_normal_dsine.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_recolor_luminance.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_segment_animeface.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_segment_animeface_V2.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_sketch.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_softedge.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_t2i-adapter_color_shuffle.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_tile_anime_alpha.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_tile_anime_beta.safetensors
# wget -P sd-models/ControlNet/SDXL https://huggingface.co/bdsqlsz/qinglong_controlnet-lllite/resolve/main/bdsqlsz_controlllite_xl_tile_realistic.safetensors