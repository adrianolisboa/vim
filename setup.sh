#!/usr/bin/env bash

VIM_FOLDER="${HOME}/.vim"
GIT_DIR="$PWD"

# only execute if there's no vim folder already
if [ ! -d "${VIM_FOLDER}" ]; then
    mkdir ${VIM_FOLDER}
    mv ${GIT_DIR}/{.,}* ${VIM_FOLDER}
    ln -s ${VIM_FOLDER}/vimrc ${HOME}/.vimrc
    cd ~/.vim/pack/minpac/opt
    git clone https://github.com/k-takata/minpac.git
    vim +PackUpdate +q

    echo "Well Done! You vim is now configurated and all files are moved to: ${VIM_FOLDER}"
else
    echo "Skipping the process because you already have a vim configuration in: ${VIM_FOLDER}"
    echo "And running this process may override you current configuration, if you want to continue just delete this folder."
fi

