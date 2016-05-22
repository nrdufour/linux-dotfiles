"
" Nicolas Dufour's vimrc
"

set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'gmarik/Vundle.vim'
	Plugin 'gmarik/vundle'
	Bundle 'airblade/vim-gitgutter'
	Bundle 'tpope/vim-markdown'
	Plugin 'bling/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
        Plugin 'lambdatoast/elm.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Sets how many lines of history VIM has to remember
set history=1000

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Turn on the WiLd menu
set wildmenu

" General settings
set backspace=indent,eol,start "Allow backspace in insert mode
set encoding=utf-8
set title
set autoindent

" Default to soft tabs, 2 spaces
set expandtab
set sw=2
set sts=2
" Except for Makefiles: Hard tabs of width 2
autocmd FileType make set ts=2
" And Markdown
autocmd FileType mkd set sw=4
autocmd FileType mkd set sts=4
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.cql set filetype=cql
" And Java
autocmd FileType java set sw=2

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Scroll 7 lines
set so=7

" =============== UI ================
" Syntax highlighting
syntax on

set ruler
set number    " Display line number
set numberwidth=5
set showmatch " Show matching brackets when text indicator is over them
set showmode  " Display the current mode
set hlsearch  " Highlight search results

" Display extra whitespace -- disabled, getting annoying over time
"set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Make it obvious where 80 characters is -- Disabled
" set textwidth=80
" set colorcolumn=+1

" Don't redraw while executing macros (good performance config)
set lazyredraw

set laststatus=2
"highlight StatusLine ctermfg=blue ctermbg=white  " Highlight the status line

" ================ Turn Off Swap Files ==============
" Turn off backup files
set noswapfile
set nobackup
set nowb

" Misc
" Press F3 to turn on/off the automatic indent when pasting
set pastetoggle=<F3>

" Enable Powerline fonts for airline
let g:airline_powerline_fonts = 1
let g:airline_theme='distinguished'

" Column 80 marker
highlight OverLength ctermbg=darkred ctermfg=white guibg=#660000
match OverLength /\%81v.\+/
