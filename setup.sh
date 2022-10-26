#!/bin/bash

NOCOLOR='\033[0m'
ORANGE='\033[0;33m'
GREEN='\033[0;32m'

VIMRC_FILE=~/.vimrc
GITCONFIG_FILE=~/.gitconfig
ZSHRC=~/.zshrc


if [ -e  $VIMRC_FILE ]; then
  echo "${ORANGE}Remove exist $VIMRC_FILE"
  rm $VIMRC_FILE
fi


if [ -e $GITCONFIG_FILE ]; then
  echo "${ORANGE}Remove exist $GITCONFIG_FILE"
  rm $GITCONFIG_FILE
fi

# Setup rcs

# Setup Env varivable for rc file path
echo "${ORANGE}Set up env variable for rc file path"
echo "export RCPATH=~/dotfiles" >> $ZSHRC
source $ZSHRC

echo "${ORANGE}Setup Vimrc"
ln -s $RCPATH/vimrc $VIMRC_FILE

# Setup gitconfig
echo "${ORANGE}Setup git config"
ln -s $RCPATH/gitconfig $GITCONFIG_FILE 

echo "${GREEN}Please open .gitconfig and fill user attributes"

# setup aliases
echo "${ORANGE}Setup Aliases"
echo "source $RCPATH/aliasrc" >> $ZSHRC 
source $ZSHRC 

echo "${GREEN}Terminal Set up Complete"

