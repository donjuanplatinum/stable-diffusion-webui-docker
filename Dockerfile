
FROM debian:debian11
COPY run.sh /
ENV COMMANDLINE_ARGS=--skip-torch-cuda-test
RUN sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/' \ 
&& apt update && apt install -y python3 python3-pip python3-venv git \
&& pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple \
&& pip install torch \
&& torchvision \
&& gfpgan \
&& clip \
&& opencv-python-headless \
&& git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git \
&& python3 stable-diffusion-webui/launch.py --no-half --deepdanbooru


