echo "Restoring nodes and dependencies"

python ./custom_nodes/ComfyUI-Manager/cm-cli.py restore-snapshot /snapshot.yaml
python ./custom_nodes/ComfyUI-Manager/cm-cli.py restore-snapshot /snapshot.json
python ./custom_nodes/ComfyUI-Manager/cm-cli.py restore-dependencies

# Workaround for error when running lowrvam example
pip install bitsandbytes

python main.py --listen 0.0.0.0
