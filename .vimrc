:set lbr!
:set tabstop=4
:set autoindent
:set nu!
" Set timeout for key sequences to half
:set timeoutlen=500

:imap jk <Esc>
" Allow to save when exiting insert mode
:imap jkl <Esc>:w<CR> 

" Allow backspace to work normal
":set backspace=indent,eol,start
:set backspace=2

" Turn syntax on
:syn on

" set font
if has('gui_running')
    set guifont=SAS_Monospace:h9:cANSI
endif

" map Ctrl-S
nmap <c-s> :w<CR>
vmap <c-s> <Esc><c-s>gv
imap <c-s> <Esc><c-s>

nmap <F2> :update<CR>
vmap <F2> <Esc><F2>gv
imap <F2> <c-o><F2>

:source ~/autocorrect.vim
iab buidling building
