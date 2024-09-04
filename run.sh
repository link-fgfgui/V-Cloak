
cd V-Cloak

cd Datasets

wget https://www.openslr.org/resources/12/dev-clean.tar.gz

tar zxvf dev-clean.tar.gz

cd ..

pip install torch==1.10.1+cu113 torchaudio==0.10.1+cu113 -f https://mirror.sjtu.edu.cn/pytorch-wheels/cu113/?mirror_intel_list

pip install -r requirements.txt

git clone --recursive https://github.com/parlance/ctcdecode.git

cd ctcdecode && pip install .

cd ..

git clone https://github.com/link-fgfgui/deepspeech.pytorch.git

cd deepspeech.pytorch

pip install -r requirements.txt

pip install -e . # Dev install

cd ..

python train.py
