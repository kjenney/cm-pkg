echo "Restoring nodes and dependencies"

python ./custom_nodes/ComfyUI-Manager/cm-cli.py restore-snapshot /snapshot.yaml
python ./custom_nodes/ComfyUI-Manager/cm-cli.py restore-snapshot /snapshot.json
python ./custom_nodes/ComfyUI-Manager/cm-cli.py restore-dependencies

# Install HunyuanWrapper as it's not in ComfyUIManager yet
#git clone https://github.com/kijai/ComfyUI-HunyuanVideoWrapper
#mv ComfyUI-HunyuanVideoWrapper custom_nodes
#cd custom_nodes/ComfyUI-HunyuanVideoWrapper
#pip install -r requirements.txt
#cd /usr/src/ComfyUI

python main.py --listen 0.0.0.0
