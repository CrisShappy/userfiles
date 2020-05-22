syntax on
set relativenumber number 
call plug#begin('~/.vim/plugged')
Plug 'jooize/vim-colemak'
Plug 'vim-python/python-syntax'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

bindkey '^ ' autosuggest-execute
bindkey '^f' autosuggest-accept
