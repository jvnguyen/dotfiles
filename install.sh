#!/bin/sh

dotfiles='
bash_aliases
bash_functions
bashrc
screenrc
vimrc
'

#
# readlink doesn't work the same on Mac OS X as Linux.
#
unamestr=$(uname)
case "$unamestr" in
Darwin*)
    dotfiledir=$(cd "$(dirname "$0")"; pwd)
    ;;
*)
    dotfiledir=$(readlink -f $0)
    dotfiledir=$(dirname $dotfiledir)
    ;;
esac

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

