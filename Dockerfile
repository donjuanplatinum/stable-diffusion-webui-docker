
FROM debian:debian11
RUN sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/' \ 
&& apt update && apt install -y python3 python3-pip python3-venv git \
&& pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
&& pip install torch torchvision gfpgan clip opencv-python-headless \
&& git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git \
&& chmod 777 stable-diffusion-webui/* \
&& sh ~/stable-diffusion-webui/webui.sh
