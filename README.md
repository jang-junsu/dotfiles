# DotFiles For Setup Terminal
It includes 
```
Vim
Git Config
Aliases
```

# Setup
Will include by `setup.sh` file
```shell
# clone on home directory 

source ~/dotfiles/setup.sh
```

# Packages
## Anyenv
```shell
# it will be include to setup script

$ brew install anyenv
$ echo 'eval "$(anyenv init -)"' >> ~/.zshrc
$ exec $SHELL -l

$ mkdir -p $(anyenv root)/plugins
$ git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update
$ anyenv update

$ anyenv install -l
$ anyenv install [rbenv nodenv jenv goenv]
```
## fzf
[fzf](https://github.com/junegunn/fzf)

## bat 
[bat](https://github.com/sharkdp/bat)

## tldr
[tldr](https://tldr.sh/)]
