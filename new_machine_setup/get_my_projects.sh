WORKSPACE=/home/minchao/projects
mkdir -p $WORKSPACE
cd $WORKSPACE
# clone projects
if [ ! -d $WORKSPACE/draft ]; then
    git clone https://github.com/minchao-sun/draft.git
fi
if [ ! -d $WORKSPACE/minchao-sun.github.io ]; then
    git clone https://github.com/minchao-sun/minchao-sun.github.io.git
fi
if [ ! -d $WORKSPACE/DeepSpeed ]; then
    git clone https://github.com/minchao-sun/DeepSpeed.git
    cd DeepSpeed
    git remote add upstream https://github.com/microsoft/DeepSpeed.git
    cd $WORKSPACE
fi
if [ ! -d $WORKSPACE/AscendSpeed ]; then
    git clone https://gitee.com/minchao-sun/AscendSpeed.git
    cd AscendSpeed
    git remote add upstream https://gitee.com/ascend/AscendSpeed.git
    cd $WORKSPACE
fi
if [ ! -d $WORKSPACE/HE2RNA_code ]; then
    git clone https://github.com/owkin/HE2RNA_code.git
fi
if [ ! -d $WORKSPACE/Megatron-LM ]; then
    git clone https://github.com/NVIDIA/Megatron-LM.git
fi