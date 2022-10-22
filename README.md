# stable-diffusion-webui-docker
使用Stable-diffsuion-webui来构建Linux操作系统下的Docker容器
##构建方式
```
cd xxx/stable-diffsuion-webui-docker/
docker build -t novel:v1
```
##使用方法
```
docker run -p 7860:7860 -itd --name novel --restart always novel:v1
docker exec -it novel:v1 bash
su novel && sh ~/stable-diffusion-webui/webui.sh
```
