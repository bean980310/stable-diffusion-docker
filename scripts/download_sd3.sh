#!/usr/bin/env bash

# If huggingface is not installed, you must to install it first.

echo "Login to huggingface"

huggingface-cli login

echo "Downloading SD 3 model"

cd /workspace/stable-diffusion-webui/models/Stable-diffusion

huggingface-cli download stabilityai/stable-diffusion-3-medium sd3_medium.safetensors --local-dir=./models/Stable-diffusion
huggingface-cli download stabilityai/stable-diffusion-3-medium sd3_medium_incl_clips.safetensors --local-dir=./models/Stable-diffusion
huggingface-cli download stabilityai/stable-diffusion-3-medium sd3_medium_incl_clips_t5xxlfp8.safetensors --local-dir=./models/Stable-diffusion
huggingface-cli download stabilityai/stable-diffusion-3-medium sd3_medium_incl_clips_t5xxlfp16.safetensors --local-dir=./models/Stable-diffusion