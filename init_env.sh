conda create -n nanodet python=3.8 -y
conda activate nanodet
conda install kiwisolver opencv -y
#pip install onnx2tf onnx_graphsurgeon
pip install Cython matplotlib numpy onnx ipdb onnxruntime onnx-simplifier pyyaml imagesize pycocotools tabulate tensorboard termcolor --no-index
pip install --upgrade pip==23.0.1
unset PIP_CACHE_DIR
pip install omegaconf==2.0.2
conda install pytorch=1.13.1 torchvision cudatoolkit=11.1 tensorflow=2.11.0 -c conda-forge -y 
conda install pytorch-lightning=1.9.5 torchmetrics tqdm -y
python setup.py develop
wget https://developer.download.nvidia.com/compute/redist/onnx-graphsurgeon/onnx_graphsurgeon-0.3.9-py2.py3-none-any.whl
pip install onnx_graphsurgeon-0.3.9-py2.py3-none-any.whl
pip install onnx2tf==1.11.0 sng4onnx
source train_cmd.sh
source convert_cmd.sh
onnx2tf -i nanodet.onnx
mkdir ckpt && cd ckpt
# nanodet_m.ckpt
#wget https://drive.google.com/file/d/1ZkYucuLusJrCb_i63Lid0kYyyLvEiGN3/view?usp=sharing
# nanodet-plus-m_320.pth
#wget https://drive.google.com/file/d/1Dq0cTIdJDUhQxJe45z6rWncbZmOyh1Tv/view?usp=sharing
#wget https://drive.google.com/file/d/1YvuEhahlgqxIhJu7bsL-fhaqubKcCWQc/view