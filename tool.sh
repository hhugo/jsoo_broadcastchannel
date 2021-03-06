#!/bin/sh

# Small tools to be fast to generate files
lib=`opam config var lib`
boot="$lib/jsoo_broadcastchannel"

if [ "$1" = "clean" ];
then
    echo "Clean emacs files"
    rm -rf *~
    rm -rf */*~
    rm -rf \#*
    rm -rf */\#*
    make clean
    make distclean

elif [ "$1" = "oasis" ];
then
     echo "Setup Oasis"
     oasis setup -setup-update dynamic
elif [ "$1" = "remove" ];
then
    echo "Erase [Jsoo_broadcast] localised in [$boot]"
    rm -r $boot
fi
