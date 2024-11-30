FROM python:3.10.15-slim

ARG COMFY_VERSION="v0.3.5"
ARG COMFYMGR_VERSION="2.54"

RUN apt update && apt install -y git

WORKDIR /usr/src/

RUN git clone https://github.com/comfyanonymous/ComfyUI

WORKDIR /usr/src/ComfyUI

RUN git checkout $COMFY_VERSION
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu124

WORKDIR /usr/src/ComfyUI/custom_nodes

RUN git clone https://github.com/ltdrdata/ComfyUI-Manager.git
RUN git checkout $COMFYMGR_VERSION

WORKDIR /usr/src/ComfyUI

CMD python main.py --listen 0.0.0.0
