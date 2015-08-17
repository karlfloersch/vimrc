set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'

" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Python syntax + lint + more
Plugin 'klen/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"

" For eclim UltiSnips add the code from the 2nd comment 
" in this post: http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme


" **************  MAP LEADER ************** " 
let mapleader = " "

" **************  DELETE TRAILING WHITESPACE  ************** " 
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

" **************  USE SYSTEM CLIPBOARD  ************** " 
set clipboard=unnamedplus

" **************  GREP CURRENT WORD  ************** " 
nnoremap <leader>* :execute "vimgrep /" . expand("<cword>") . "/j ../../**/*.py" <Bar> cw<CR>

" **************  SET COLORSCHEME  ************** " 
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
colorscheme mrkn256

" **************  NO WHITESPACE AT BOTTOM  ************** " 
" see: https://wiki.archlinux.org/index.php/Vim#Empty_space_at_the_bottom_of_gVim_windows
set guiheadroom=0

" **************  SET HIDDEN?  ************** " 
" see: http://usevim.com/2012/10/19/vim101-set-hidden/
" set hidden

" **************  HIGHLIGHT SEARCHES  ************** " 
set hlsearch

" **************  CASE INSENSITIVE SEARCH  ************** " 
set ignorecase
set smartcase

" **************  BACKSPACE OVER AUTOINDENT + MORE  ************** " 
set backspace=indent,eol,start

" **************  CHANGE COMMAND HEIGHT  ************** " 
set cmdheight=1

" **************  SHOW LINE NUMBERS  ************** " 
"set number

" **************  TIMEOUT KEYCODES, NOT MAPPINGS  ************** " 
set notimeout ttimeout ttimeoutlen=200

" **************  TOGGLE PASTE  ************** " 
set pastetoggle=<F11>

" **************  CHANGE INDENT SETTINGS  ************** " 
set shiftwidth=2
set softtabstop=2
set expandtab

" **************  USE HARD TABS FOR INDENT  ************** " 
"set shiftwidth=2
"set tabstop=2

" **************  YANK UNTIL EOL  ************** " 
map Y y$

" **************  UN-HIGHLIGHT SEARCH  ************** " 
nnoremap <C-L> :nohl<CR><C-L>


"------------------------------------------------------------
