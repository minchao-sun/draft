# !/bin/bash
apt-get update
apt install zsh

# check if conda exists
~/miniconda3/bin/conda init zsh
if [ $? -ne 0 ]; then
    # install miniconda
    mkdir -p ~/miniconda3
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
    bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
    rm -rf ~/miniconda3/miniconda.sh
    # conda init
    ~/miniconda3/bin/conda init bash
    ~/miniconda3/bin/conda init zsh
fi

# git
git config --global user.name "minchao-sun"
git config --global user.email minchao.sun@outlook.com
git config --global core.autocrlf input
git lfs install