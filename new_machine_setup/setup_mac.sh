# check if conda exists
~/miniconda3/bin/conda init zsh
if [ $? -ne 0 ]; then
    mkdir -p ~/miniconda3
    curl https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-arm64.sh -o ~/miniconda3/miniconda.sh
    bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
    rm -rf ~/miniconda3/miniconda.sh
fi

~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh

# git
git config --global user.name "Minchao Sun"
git config --global user.email minchao.sun@outlook.com
