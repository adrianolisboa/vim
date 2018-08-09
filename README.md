[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/adrianolisboa)

### Vim Configurations

Some configurations of my vim.

### Setup

Clone the repository on your home folder (`/home/[username]`) with the name `.vim`.

    git clone https://github.com/adrianolisboa/vim.git ~/.vim

Now run the following commands to install [*minpac*](https://github.com/k-takata/minpac) package manager.

    $ cd ~/.vim/pack/minpac/opt
    $ git clone https://github.com/k-takata/minpac.git

Now create a symbolic link to the [*rc*](https://en.wikipedia.org/wiki/Configuration_file) file.

    $ ln -s .vim/vimrc ~/.vimrc

Open vim and type

    :PackUpdate

*Note:* This command will install my configurated *packages.vim*.
