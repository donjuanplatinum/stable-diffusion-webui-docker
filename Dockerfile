
FROM debian:debian11
RUN  set -x ; mkdir -p /home/novel/  \ 
          && useradd novel -s /bin/bash -d /home/novel  \
          && chown novel /home/novel \
          && apt update 
          && apt install -y python3 \  
                         python3-pip \
                         python3-venv \
                         pythpon3-dev  \
          && pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple  \
          && pip install torch \
                  torchvision \
                  gfpgan \
                  clip \
                  xformers \
                  deepdanbooru  
USER novel
WORKDIR /home/novel
RUN  sex -x ;git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git \
&&chmod 777 stable-diffusion-webui/* \
&& sh ~/stable-diffusion-webui/webui.sh
