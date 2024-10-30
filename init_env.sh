conda create -n nanodet python=3.8 -y
conda activate nanodet
pip install Cython matplotlib numpy onnx onnx-simplifier pyyaml omegaconf>=2.0.1 imagesize pycocotools tabulate tensorboard termcolor --no-index
conda install pytorch torchvision cudatoolkit=11.1 -c pytorch pytorch-lightning=1.10.0 -c conda-forge 
conda install torchmetrics tqdm
cd $SLURM_TMPDIR
git clone git@github.com:srikanth-sfu/nanodet.git

# opencv-python