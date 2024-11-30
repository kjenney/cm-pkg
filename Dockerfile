FROM python:3.10.15-slim

RUN apt update && apt install -y git

WORKDIR /usr/src/

RUN git clone https://github.com/comfyanonymous/ComfyUI

WORKDIR /usr/src/ComfyUI

RUN pip install -r requirements.txt
RUN pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu124

CMD python main.py --listen 0.0.0.0
