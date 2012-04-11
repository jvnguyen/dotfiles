#!/bin/sh

dotfiledir=$(readlink -f $0)
dotfiledir=$(dirname $dotfiledir)
for f in $(ls $dotfiledir/*rc); do
    dotfn=$(basename $f)
    echo "Linking $f -> $HOME/.${dotfn}"
    #ln -s $f $HOME/.${dotfn}
done
