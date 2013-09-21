call pathogen#infect()

syntax on
filetype plugin on
filetype indent on
set number " show line numbers
set paste " make pasting work

" Enable syntax folding for blocks and comments
set foldmethod=syntax
set foldlevel=100

" Convert tabs to spaces
set expandtab

" Remove whistespace at end of line before write
func! StripTrailingWhitespace()
  normal mZ
  %s/\s\+$//e
  normal `Z
endfunc
au BufWrite * if ! &bin | call StripTrailingWhitespace() | endif
