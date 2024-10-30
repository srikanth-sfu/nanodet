conda create -n nanodet python=3.8 -y
conda activate nanodet
conda install kiwisolver opencv -y
pip install Cython matplotlib numpy onnx onnx-simplifier pyyaml imagesize pycocotools tabulate tensorboard termcolor --no-index
pip install --upgrade pip==23.0.1
unset PIP_CACHE_DIR
pip install omegaconf==2.0.2
conda install pytorch torchvision cudatoolkit=11.1 -c pytorch pytorch-lightning=1.9.5 -c conda-forge -y 
conda install torchmetrics tqdm -y
python setup.py develop
mkdir ckpt && cd ckpt
# nanodet_m.ckpt
#wget https://drive.google.com/file/d/1ZkYucuLusJrCb_i63Lid0kYyyLvEiGN3/view?usp=sharing
# nanodet-plus-m_320.pth
#wget https://drive.google.com/file/d/1Dq0cTIdJDUhQxJe45z6rWncbZmOyh1Tv/view?usp=sharing
#wget https://drive.google.com/file/d/1YvuEhahlgqxIhJu7bsL-fhaqubKcCWQc/view
