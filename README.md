# DotFiles For Setup Terminal
Include 
```
Vim
GitAlias
```

# Setup
Will include by `setup.sh` file
```shell
# clone on home directory 

# Depending on vim-plug
$ ln -s .dotfiles/.vimrc .vimrc

$ ln -s .dotfiles/.gitconfig .gitconfig
$ vim .gitconfig # Fill user attributes

$ echo 'source ~/.dotfiles/.aliases' >> ~/.zshrc
```

# Packages
## Anyenv
```shell
$ brew install anyenv
$ echo 'eval "$(anyenv init -)"' >> ~/.zshrc
$ exec $SHELL -l

$ mkdir -p $(anyenv root)/plugins
$ git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
$ anyenv update

$ anyenv install -l
$ anyenv install [rbenv nodenv jenv goenv]
```
