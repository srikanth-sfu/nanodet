CONFIG_PATH=config/legacy_v0.x_configs/nanodet-m-0.5x.yml
PYTORCH_MODEL_PATH=wt_320.pth
python tools/export_onnx.py --cfg_path ${CONFIG_PATH} --model_path ${PYTORCH_MODEL_PATH}
