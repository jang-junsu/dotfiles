"highlight blase
set showmatch

set number

"tab controll
set tabstop=2
set smarttab
set shiftwidth=2
set softtabstop=2
set autoindent

set display=uhex
syntax enable
syntax on

"scroll bar width
set sw=1

"커서 위치를 마지막 수정된 곳으로 함 
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
