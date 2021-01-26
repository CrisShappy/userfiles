syntax on
set relativenumber number

""" Auto Center when entering Insert Mode
autocmd InsertEnter * norm zz

""" Auto Remove Trailing White Space
autocmd BufWritePre * %s/\s\+$//e

set wildmode=longest,list,full

""" Setting Tab Behavior
set shiftwidth=4
set softtabstop=4
set tabstop=4

" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap < <><left>
" inoremap > <><left>
""inoremap {<CR> {<CR>}<ESC>O
""inoremap {;<CR> {<CR>};<ESC>O

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

call plug#begin('~/.vim/plugged')
""Plug 'rakr/vim-one'
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plug 'ludwig/split-manpage.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'vim-scripts/grep.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-capslock'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
call plug#end()

""colorscheme one
""set background=dark
""if (has("termguicolors"))
""    set termguicolors
""  endif

""" Workman Keybinds
    noremap y h
    noremap n j
    noremap e k
    noremap o l
    noremap j y
    noremap h e
    noremap H E
    noremap l o
    noremap L O
    noremap k n
    noremap K N

""" Scroll down/up
    noremap <C-N>  <C-E>
    noremap <C-E>  <C-Y>
