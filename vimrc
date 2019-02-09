"basic settings {{{1
set nocompatible

set foldmethod=marker

set statusline=%<%f\ %y%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}[val:%B]%=[buf:%n]\ \ %l/%L,%c%V%8P
set laststatus=2

set wildmenu
set visualbell

set cursorline
set nobackup

set autoindent

set grepprg=egrep

set ea

"search settings {{{2
set smartcase
set ignorecase
set hlsearch
set incsearch


"color settings {{{2
colorscheme pablo
set background=dark


"syntax settings {{{2
syntax enable
filetype indent plugin on
set modeline


"key mappings {{{1
let maplocalleader = " "

:map <F1> <ESC>
:cnoremap <C-B> <Left>
:cnoremap <C-A> <Home>
:cnoremap <C-E> <End>
:cnoremap <C-D> <Delete>

:nnoremap <localleader>.v :<C-u>source $MYVIMRC<CR>
:nnoremap <localleader>ov :<C-u>edit $MYVIMRC<CR>
:nnoremap <localleader>.g :<C-u>source $MYGVIMRC<CR>
:nnoremap <localleader>og :<C-u>edit $MYGVIMRC<CR>

:nnoremap <localleader>vs :<C-u>VimFiler -split -simple -winwidth=35 -no-quit<CR>
:nnoremap <localleader>qr :<C-u>QuickRun
" }}}

"vundle {{{
filetype off

" set the runtime path to include Vundle and initialize
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/
set rtp+=~/.vim/bundle/Vundle.vim/
try
    call vundle#begin()

    Plugin 'tpope/vim-pathogen'
    Plugin 'tpope/vim-fugitive'

    Plugin 'davidhalter/jedi-vim'

    Plugin 'Shougo/neocomplcache'
    Plugin 'Shougo/unite.vim'
    Plugin 'Shougo/vimfiler'
    Plugin 'itchyny/lightline.vim'

    Plugin 'thinca/vim-template'

    Plugin 'scrooloose/syntastic'
    call vundle#end()
catch
echom "vundle couldn't be imported. Do 'git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim'"
endtry


filetype plugin indent on
" }}}

"lightline {{{
if !has('gui_running')
      set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ }
