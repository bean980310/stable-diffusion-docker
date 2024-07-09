#!/usr/bin/env bash

export PYTHONUNBUFFERED=1
export APP="stable-diffusion-webui"
DOCKER_IMAGE_VERSION_FILE="/workspace/${APP}/docker_image_version"

echo "Template version: ${TEMPLATE_VERSION}"
echo "venv: ${VENV_PATH}"

if [[ -e ${DOCKER_IMAGE_VERSION_FILE} ]]; then
    EXISTING_VERSION=$(cat ${DOCKER_IMAGE_VERSION_FILE})
else
    EXISTING_VERSION="0.0.0"
fi

rsync_with_progress() {
    stdbuf -i0 -o0 -e0 rsync -au --info=progress2 "$@" | stdbuf -i0 -o0 -e0 tr '\r' '\n' | stdbuf -i0 -o0 -e0 grep -oP '\d+%|\d+.\d+[mMgG]' | tqdm --bar-format='{l_bar}{bar}' --total=100 --unit='%' > /dev/null
}

sync_apps() {
    # Only sync if the DISABLE_SYNC environment variable is not set
    if [ -z "${DISABLE_SYNC}" ]; then
        # Sync main venv to workspace to support Network volumes
        echo "Syncing main venv to workspace, please wait..."
        mkdir -p ${VENV_PATH}
        rsync_with_progress --remove-source-files /venv/ ${VENV_PATH}/

        # Sync application to workspace to support Network volumes
        echo "Syncing ${APP} to workspace, please wait..."
        rsync_with_progress --remove-source-files /${APP}/ /workspace/${APP}/

        # Sync Kohya_ss to workspace to support Network volumes
        echo "Syncing Kohya_ss to workspace, please wait..."
        rsync_with_progress --remove-source-files /kohya_ss/ /workspace/kohya_ss/

        # Sync ComfyUI to workspace to support Network volumes
        echo "Syncing ComfyUI to workspace, please wait..."
        rsync_with_progress --remove-source-files /ComfyUI/ /workspace/ComfyUI/

        # Sync InvokeAI to workspace to support Network volumes
        echo "Syncing InvokeAI to workspace, please wait..."
        rsync_with_progress --remove-source-files /InvokeAI/ /workspace/InvokeAI/

        echo "${TEMPLATE_VERSION}" > ${DOCKER_IMAGE_VERSION_FILE}
        echo "${VENV_PATH}" > "/workspace/${APP}/venv_path"
    fi
}

fix_venvs() {
    echo "Fixing A1111 Web UI venv..."
    /fix_venv.sh /venv ${VENV_PATH}

    echo "Fixing ComfyUI venv..."
    /fix_venv.sh /ComfyUI/venv /workspace/ComfyUI/venv
}

link_models() {
    if [[ ! -L /workspace/stable-diffusion-webui/models/Stable-diffusion/SD15 ]]; then
        ln -s /sd-models/Stable-diffusion/SD15 /workspace/stable-diffusion-webui/models/Stable-diffusion/SD15
    fi
    if [[ ! -L /workspace/stable-diffusion-webui/models/Stable-diffusion/SDXL ]]; then
        ln -s /sd-models/Stable-diffusion/SDXL /workspace/stable-diffusion-webui/models/Stable-diffusion/SDXL
    fi
    if [[ ! -L /workspace/stable-diffusion-webui/models/Stable-diffusion/Pony ]]; then
        ln -s /sd-models/Stable-diffusion/Pony /workspace/stable-diffusion-webui/models/Stable-diffusion/Pony
    fi
    if [[ ! -L /workspace/stable-diffusion-webui/models/Stable-diffusion/upscale ]]; then
        ln -s /sd-models/Stable-diffusion/upscale /workspace/stable-diffusion-webui/models/Stable-diffusion/upscale
    fi

    if [[ ! -L /workspace/stable-diffusion-webui/models/VAE/SD15 ]]; then
        ln -s /sd-models/VAE/SD15 /workspace/stable-diffusion-webui/models/VAE/SD15
    fi
    if [[ ! -L /workspace/stable-diffusion-webui/models/VAE/SDXL ]]; then
        ln -s /sd-models/VAE/SDXL /workspace/stable-diffusion-webui/models/VAE/SDXL
    fi

    if [[ ! -L /workspace/stable-diffusion-webui/models/ControlNet/SD15 ]]; then
        ln -s /sd-models/ControlNet/SD15 /workspace/stable-diffusion-webui/models/ControlNet/SD15
    fi
    if [[ ! -L /workspace/stable-diffusion-webui/models/ControlNet/SDXL ]]; then
        ln -s /sd-models/ControlNet/SDXL /workspace/stable-diffusion-webui/models/ControlNet/SDXL
    fi

    if [[ ! -L /workspace/stable-diffusion-webui/models/Lora/SD15 ]]; then
        ln -s /sd-models/Lora/SD15 /workspace/stable-diffusion-webui/models/Lora/SD15
    fi
    if [[ ! -L /workspace/stable-diffusion-webui/models/Lora/SDXL ]]; then
        ln -s /sd-models/Lora/SDXL /workspace/stable-diffusion-webui/models/Lora/SDXL
    fi
    if [[ ! -L /workspace/stable-diffusion-webui/models/Lora/Pony ]]; then
        ln -s /sd-models/Lora/Pony /workspace/stable-diffusion-webui/models/Lora/Pony
    fi

    if [[ ! -L /workspace/stable-diffusion-webui/embeddings/SD15 ]]; then
        ln -s /sd-models/embeddings/SD15 /workspace/stable-diffusion-webui/embeddings/SD15
    fi
    if [[ ! -L /workspace/stable-diffusion-webui/embeddings/SDXL ]]; then
        ln -s /sd-models/embeddings/SDXL /workspace/stable-diffusion-webui/embeddings/SDXL
    fi

    if [[ ! -L /workspace/stable-diffusion-webui/models/ESRGAN ]]; then
        ln -s /sd-models/ESRGAN /workspace/stable-diffusion-webui/models/ESRGAN
    fi

#    # Link models and VAE if they are not already linked
#    if [[ ! -L /workspace/stable-diffusion-webui/models/Stable-diffusion/SD15/v1-5-pruned-emaonly.safetensors ]]; then
#        ln -s /sd-models/v1-5-pruned-emaonly.safetensors /workspace/stable-diffusion-webui/models/Stable-diffusion/SD15/v1-5-pruned-emaonly.safetensors
#    fi

#    if [[ ! -L /workspace/stable-diffusion-webui/models/Stable-diffusion/SD15/sd-v1-5-inpainting.ckpt ]]; then
#        ln -s /sd-models/sd-v1-5-inpainting.ckpt /workspace/stable-diffusion-webui/models/Stable-diffusion/SD15/sd-v1-5-inpainting.ckpt
#    fi

#    if [[ ! -L /workspace/stable-diffusion-webui/models/VAE/SD15/vae-ft-mse-840000-ema-pruned.safetensors ]]; then
#        ln -s /sd-models/vae-ft-mse-840000-ema-pruned.safetensors /workspace/stable-diffusion-webui/models/VAE/SD15/vae-ft-mse-840000-ema-pruned.safetensors
#    fi
#    if [[ ! -L /workspace/stable-diffusion-webui/models/Stable-diffusion/SDXL/sd_xl_base_1.0.safetensors ]]; then
#        ln -s /sd-models/sd_xl_base_1.0.safetensors /workspace/stable-diffusion-webui/models/Stable-diffusion/SDXL/sd_xl_base_1.0.safetensors
#    fi

#    if [[ ! -L /workspace/stable-diffusion-webui/models/Stable-diffusion/SDXL/sd_xl_refiner_1.0.safetensors ]]; then
#        ln -s /sd-models/sd_xl_refiner_1.0.safetensors /workspace/stable-diffusion-webui/models/Stable-diffusion/SDXL/sd_xl_refiner_1.0.safetensors
#    fi

#    if [[ ! -L /workspace/stable-diffusion-webui/models/VAE/SDXL/sdxl_vae.safetensors ]]; then
#        ln -s /sd-models/sdxl_vae.safetensors /workspace/stable-diffusion-webui/models/VAE/SDXL/sdxl_vae.safetensors
#    fi
}

generate_directory() {
    # cd /workspace/stable-diffusion-webui/models/Stable-diffusion
    # mkdir /workspace/stable-diffusion-webui/models/Stable-diffusion/SD14
    mkdir /workspace/stable-diffusion-webui/models/Stable-diffusion/SD15
    # mkdir /workspace/stable-diffusion-webui/models/Stable-diffusion/SD2
    mkdir /workspace/stable-diffusion-webui/models/Stable-diffusion/SDXL
    mkdir /workspace/stable-diffusion-webui/models/Stable-diffusion/Pony
    # mkdir /workspace/stable-diffusion-webui/models/Stable-diffusion/SD3
    mkdir /workspace/stable-diffusion-webui/models/Stable-diffusion/upscale

    # cd /workspace/stable-diffusion-webui/models/VAE
    mkdir /workspace/stable-diffusion-webui/models/VAE/SD15
    mkdir /workspace/stable-diffusion-webui/models/VAE/SDXL

    # cd /workspace/stable-diffusion-webui/models/ControlNet
    mkdir /workspace/stable-diffusion-webui/models/ControlNet/SD15
    mkdir /workspace/stable-diffusion-webui/models/ControlNet/SDXL

    # cd /workspace/stable-diffusion-webui/models/Lora
    mkdir /workspace/stable-diffusion-webui/models/Lora/SD15
    mkdir /workspace/stable-diffusion-webui/models/Lora/SDXL
    mkdir /workspace/stable-diffusion-webui/models/Lora/Pony

    # cd /workspace/stable-diffusion-webui/embeddings
    mkdir /workspace/stable-diffusion-webui/embeddings/SD15
    mkdir /workspace/stable-diffusion-webui/embeddings/SDXL
}

if [ "$(printf '%s\n' "$EXISTING_VERSION" "$TEMPLATE_VERSION" | sort -V | head -n 1)" = "$EXISTING_VERSION" ]; then
    if [ "$EXISTING_VERSION" != "$TEMPLATE_VERSION" ]; then
        sync_apps
        fix_venvs
        # generate_directory
        link_models

        # Add VENV_PATH to webui-user.sh
        sed -i "s|venv_dir=VENV_PATH|venv_dir=${VENV_PATH}\"\"|" /workspace/stable-diffusion-webui/webui-user.sh

        # Configure accelerate
        echo "Configuring accelerate..."
        mkdir -p /root/.cache/huggingface/accelerate
        mv /accelerate.yaml /root/.cache/huggingface/accelerate/default_config.yaml

        # Create logs directory
        mkdir -p /workspace/logs
    else
        echo "Existing version is the same as the template version, no syncing required."
    fi
else
    echo "Existing version is newer than the template version, not syncing!"
fi

# Start application manager
cd /app-manager
npm start > /workspace/logs/app-manager.log 2>&1 &

if [[ ${DISABLE_AUTOLAUNCH} ]]
then
    echo "Auto launching is disabled so the applications will not be started automatically"
    echo "You can launch them manually using the launcher scripts:"
    echo ""
    echo "   Stable Diffusion Web UI:"
    echo "   ---------------------------------------------"
    echo "   /start_a1111.sh"
    echo ""
    echo "   Kohya_ss"
    echo "   ---------------------------------------------"
    echo "   /start_kohya.sh"
    echo ""
    echo "   ComfyUI"
    echo "   ---------------------------------------------"
    echo "   /start_comfyui.sh"
    echo ""
    echo "   InvokeAI"
    echo "   ---------------------------------------------"
    echo "   /start_invokeai.sh"
else
    /start_a1111.sh
    /start_kohya.sh
    /start_comfyui.sh
    /start_invokeai.sh
fi

if [ ${ENABLE_TENSORBOARD} ];
then
    /start_tensorboard.sh
fi

echo "All services have been started"
