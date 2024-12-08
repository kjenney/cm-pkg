FROM python:3.10.15-slim

ARG COMFY_VERSION="v0.3.7"
ARG COMFYMGR_VERSION="2.55.3"

RUN apt update && \
    apt install -y git ffmpeg libsm6 libxext6 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/

RUN useradd -ms /bin/bash myuser
RUN chown -R myuser /usr/src
USER myuser

RUN git clone --depth 1 -b $COMFY_VERSION https://github.com/comfyanonymous/ComfyUI

WORKDIR /usr/src/ComfyUI

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu124

WORKDIR /usr/src/ComfyUI/custom_nodes

RUN git clone --depth 1 -b $COMFYMGR_VERSION https://github.com/ltdrdata/ComfyUI-Manager.git

WORKDIR /usr/src/ComfyUI/custom_nodes/ComfyUI-Manager
RUN pip install -r requirements.txt

# for security override
COPY config.ini .

WORKDIR /usr/src/ComfyUI

RUN python -m pip install --upgrade pip # To avoid all of the warnings

# to laod additional custom nodes and start ComfyUI
COPY entrypoint.sh .

CMD /usr/src/ComfyUI/entrypoint.sh
