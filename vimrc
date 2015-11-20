" make Vim non compatible with Vim
set nocompatible

let plug_autoinstall = 0
let plug_plugin = expand('~/.vim/autoload/plug.vim')

if !filereadable(plug_plugin)
    echo "Installing plug..."
    echo ""
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let plug_autoinstall = 1
endif

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'
Plug 'gcmt/wildfire.vim'
Plug 'xuhdev/SingleCompile'
Plug 'koron/nyancat-vim'

Plug 'scrooloose/syntastic'
Plug 'honza/vim-snippets'
Plug 'rking/ag.vim'
Plug 'vim-latex/vim-latex'
Plug 'majutsushi/tagbar'
Plug 'severin-lemaignan/vim-minimap'

if has('lua') 
    Plug 'Shougo/neocomplete.vim'
    Plug 'SirVer/ultisnips'
endif

" All of your Plugins must be added before the following line
call plug#end()

if plug_autoinstall
    echo "Installing plugins..."
    echo ""
    :PlugInstall
endif

filetype plugin indent on   " filetype detection on
syntax on                   " switch on syntax highlighting
set encoding=utf-8

" Now process all of the configuration files that I have stored in my 'config'
" directory, which significantly cleans up this file.
for filename in sort(split(glob('~/.vim/config/*.vim'), '\n'))
    execute 'source '.filename
endfor
