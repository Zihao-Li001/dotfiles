# Linux
export CDLMD_LICENSE_FILE="/home/lzh/Desktop/Crack/license.dat"
starccm="/opt/Siemens/19.02.009-R8/STAR-CCM+19.02.009-R8/star/bin/"
export LD_LIBRARY_PATH="$VABS:$LD_LIBRARY_PATH"
export PATH=$PATH:$starccm:$VABS
export PATH="/home/lzh/pycharm-2025.1.2/bin:$PATH"

__conda_setup="$('/home/lzh/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/lzh/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/lzh/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/lzh/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
