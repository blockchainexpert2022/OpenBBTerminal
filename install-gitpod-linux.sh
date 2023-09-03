mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

# restart shell then

conda env create -n obb --file build/conda/conda-3-9-env.yaml
conda activate obb
build/conda/cleanup_artifacts.sh
poetry install -E all
python terminal.py


