CONFIG_PATH=config/nanodet-plus-m_320.yml
PYTORCH_MODEL_PATH=wt_320.pth
python tools/export_onnx.py --cfg_path ${CONFIG_PATH} --model_path ${PYTORCH_MODEL_PATH}
