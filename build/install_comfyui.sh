#!/usr/bin/env bash
set -e

# Clone the repo
git clone https://github.com/comfyanonymous/ComfyUI.git /ComfyUI
cd /ComfyUI

# Create and activate the venv
python3 -m venv --system-site-packages venv
source venv/bin/activate

# Install torch and xformers
pip3 install --no-cache-dir torch==${TORCH_VERSION} torchvision torchaudio --index-url ${INDEX_URL}
pip3 install --no-cache-dir xformers==${XFORMERS_VERSION} --index-url ${INDEX_URL}

# Install requirements
pip3 install -r requirements.txt

# Install ComfyUI Custom Nodes
git clone https://github.com/ltdrdata/ComfyUI-Manager.git custom_nodes/ComfyUI-Manager
git clone https://github.com/ltdrdata/ComfyUI-Impact-Pack.git custom_nodes/ComfyUI-Impact-Pack
git clone https://github.com/ltdrdata/ComfyUI-Inspire-Pack.git custom_nodes/ComfyUI-Inspire-Pack
cd custom_nodes/ComfyUI-Manager
pip3 install -r requirements.txt
cd /ComfyUI/custom_nodes/ComfyUI-Impact-Pack
pip3 install -r requirements.txt
python3 -m install
cd /ComfyUI/custom_nodes/ComfyUI-Inspire-Pack
pip3 install -r requirements.txt
pip3 cache purge
deactivate
