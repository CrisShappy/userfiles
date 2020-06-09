syntax on
set relativenumber number

call plug#begin('~/.vim/plugged')
Plug 'vim-python/python-syntax'
Plug 'ycm-core/YouCompleteMe'
call plug#end()


""" Dvorak Keybinds 

noremap t j
noremap n k
noremap s l
noremap s w
noremap S b
noremap - $
noremap _ ^
noremap a v
noremap A V
noremap U <C-R>
noremap e o
noremap E O
noremap o a
noremap O A
