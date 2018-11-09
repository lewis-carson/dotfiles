set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'anyakichi/vim-autoclose'
set rtp+=~/.fzf
Plugin 'junegunn/fzf.vim'

call vundle#end()            " required
filetype plugin indent on    " required
