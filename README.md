[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/adrianolisboa)

### Vim Configurations

This repository contains all my current vim configurations.

### Automatic Setup

Clone the repository anywhere and run:

    % sh setup.sh

*This will run all steps described bellow (except for cloning the repo phase).*
 
### Manual Setup

Clone the repository on your home folder and create a symbolic link to the [*rc*](https://en.wikipedia.org/wiki/Configuration_file) file.

    % git clone git@github.com:adrianolisboa/vim.git
    % ln -s ${HOME}/.vim/vimrc ${HOME}/.vimrc
    % vim +PlugInstall

### Plugins

Each time you want to add new plugins and install add them to *plugins.vim* file and run:

    :PlugInstall
