#!/bin/sh

dotfiles='
bash_aliases
bash_functions
bashrc
screenrc
vimrc
'

dotfiledir=$(readlink -f $0)
dotfiledir=$(dirname $dotfiledir)
for f in $(echo $dotfiles); do
    # Back up original file.
    if [ -f $HOME/.${f} ]; then
        echo "Backing up $HOME/.${f}"
        cp $HOME/.${f} $HOME/.${f}.bak
        rm $HOME/.${f}
    fi
    echo "Linking $dotfiledir/$f -> $HOME/.${f}" 
    ln -s $dotfiledir/$f $HOME/.${f}
done

