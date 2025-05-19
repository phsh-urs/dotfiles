" ursino's .vimrc

set nocompatible

syntax on
filetype indent on

" Settings {{{

" smarter linebreaks
set linebreak 
set breakindent

set number
set relativenumber
set spell
set incsearch " search tweaks
set hlsearch
set hidden "allow hiding a buffer
set ignorecase
set smartcase
set mouse+=a "mouse enabled

" }}}
" Disable the default Vim startup message.
set shortmess+=I


" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
set backspace=indent,eol,start

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" remove esckeys because of lag and weird behaviour
set noesckeys
" vim: ft=vim fdm=marker
