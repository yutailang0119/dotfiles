#! /bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
TIMESTAMP=$(date +%s)

BACKUP_DIR=$SCRIPT_DIR/backups/$TIMESTAMP
mkdir -p $BACKUP_DIR/.config

TARGETS=(.bashrc .bash_profile .zprofile .zshrc .zhenv .config .ssh .gitconfig .vimrc .vimrc.local)

function backup () {
    path=$1
    if [ -e ~/$path ]; then
        cp -r ~/$path $BACKUP_DIR/$path
        rm -r ~/$path
        echo "Remove \`"$path"\` and backuped to \`"$BACKUP_DIR"/"$path"\`"
    fi
}

function symblic_link() {
    path=$1
    ln -svf $SCRIPT_DIR/$path ~/$path
}

for i in "${TARGETS[@]}"
do
    backup ${i}
    symblic_link ${i}
done

