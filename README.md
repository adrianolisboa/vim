[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/adrianolisboa)

### Vim Configurations

Some configurations of my vim.

### Setup

Clone the repository on your home folder and create a symbolic link to the [*rc*](https://en.wikipedia.org/wiki/Configuration_file) file.

    % git clone https://github.com/adrianolisboa/vim.git ${HOME}/.vim
    % ln -s ${HOME}/.vim/vimrc ${HOME}/.vimrc

Now run the following commands to clone [*minpac*](https://github.com/k-takata/minpac) package manager and install the plugins

    % cd ~/.vim/pack/minpac/opt
    % git clone https://github.com/k-takata/minpac.git
    % vim +PackUpdate

Each time you want to add new plugins and install add them to *packages.vim* file and run:

    :PackUpdate
