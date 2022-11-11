export COMMANDLINE_ARGS=--skip-torch-cuda-test
cd stable-diffusion-webui/
python3 launch.py --no-half --port 1234 --listen
