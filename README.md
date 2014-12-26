Dotfiles
========

For the sake of personal portability, this repository contains several of
my essential dotfiles. The technique is borrowed from Michael Smalley

https://github.com/michaeljsmalley/dotfiles

Files herein should be cloned to your home directory so that the path is
`~/dotfiles/`.  The included setup script creates symlinks from your home
directory to the files which are located in `~/dotfiles/`.

The setup script is smart enough to back-up existing dotfiles into a
`~/dotfiles_old/` directory if you already have any dotfiles of the same name as
the dotfile symlinks being created in your home directory.

Installation
------------

Since there are a number of submodules plugins, don't forget to include the
`--recursive` flag.

``` bash
git clone --recursive https://github.com/evantishuk/dotfiles.git ~/dotfiles
cd ~/dotfiles
./makesymlinks.sh
```
