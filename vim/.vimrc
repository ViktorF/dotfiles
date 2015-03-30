""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Martin Födinger
" Sections:
"	-> General
"	-> VIM user interface
"	-> Colors and Fonts
"	-> Text, tab and indent related
"	-> Spell checking
"	-> LaTeX
""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config inspired by
"   -> https://github.com/tharugrim/dotfiles/blob/master/vim/.vim/vimrc
"   -> http://amix.dk/vim/vimrc.html
""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Disable vi compatibility
set nocompatible

" Start pathogen plugin manager
execute pathogen#infect()


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Height of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" Activate search case sensitive when the first char is uppercase
set smartcase

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme twily
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500


""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell! spelllang=en_us<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LaTeX
"""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tex_flavor = "latex"
