syntax on
set relativenumber number

""" Auto Center when entering Insert Mode
autocmd InsertEnter * norm zz

""" Auto Remove Trailing White Space
autocmd BufWritePre * %s/\s\+$//e

set wildmode=longest,list,full

""" Setting Tab Behavior
"set shiftwidth=4
"set softtabstop=4
"set tabstop=4

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
cnoreabbrev Q q!
cnoreabbrev Qall qall

""" ColemakDH Keybinds
    noremap m h
    noremap n j
    noremap e k
    noremap i l
    noremap h i
    noremap H I
    noremap k n
    noremap K N
	noremap j e
	noremap J E
	noremap z m

""" Scroll down/up
    noremap <C-N>  <C-E>
    noremap <C-E>  <C-Y>
