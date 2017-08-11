# Get miniconda
wget -q https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"

conda install -y conda-build
conda install -y anaconda-client
conda update -y conda conda-build anaconda-client

# Use this if you want to upload to the channel
conda config --set anaconda_upload yes

# Some package need zip
yum install -y zip

source /root/miniconda/bin/activate

conda build ${MY_CONDA_PACKAGE}

