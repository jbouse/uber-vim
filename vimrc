exec pathogen#infect()
exec pathogen#helptags()

syntax on
set number " show line numbers
set paste " make pasting work

if has("autocmd")
  filetype plugin indent on
endif

" Enable syntax folding for blocks and comments
set foldmethod=syntax
set foldlevel=100

" Convert tabs to spaces
set expandtab
set tabstop=2

" Remove whistespace at end of line before write
func! StripTrailingWhitespace()
  normal mZ
  %s/\s\+$//e
  normal `Z
endfunc
au BufWrite * if ! &bin | call StripTrailingWhitespace() | endif

autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif
autocmd BufReadPost fugitive://* set bufhidden=delete
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

