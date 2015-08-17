" __     ___           
" \ \   / (_)_ __ ___  
"  \ \ / /| | '_ ` _ \ 
"   \ V / | | | | | | |
"    \_/  |_|_| |_| |_|
"                      
" Karl Floersch's VIMRC!  Feel free to use it and give me no credits.
" !!! MIT MIT MIT MIT MIT MIT !!!
" I'd use } to navigate this so you can see each option on it's own.
" HAVE A GREAT DAY!
"                   $$\   $$\ $$$$$$$$\ 
"                   $$ | $$  |$$  _____|
"                   $$ |$$  / $$ |      
"                   $$$$$  /  $$$$$\    
"                   $$  $$<   $$  __|   
"                   $$ |\$$\  $$ |      
"                   $$ | \$$\ $$ |      
"                   \__|  \__|\__|      
"                 
" ॐ        ॐ        ॐ        ॐ        ॐ        ॐ        ॐ        ॐ 



" **************  REQUIRED  ************** " 
set nocompatible              " be iMproved, required
filetype off                  " required



" &&&**************  MAP LEADER  **************&&& " 
let mapleader = " "



" vvvvvvvvvvvvvvv  VUNDLE START  vvvvvvvvvvvvvvv " 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" vvvvvvvvvvvvvvv  PLUGINS  vvvvvvvvvvvvvvv " 

" **************  TPOPE  ************** " 
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'

" **************  SYNTAX + COMPLETION  ************** " 
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'

" **************  FILE OPENING/STUFF  ************** " 
Plugin 'kien/ctrlp.vim'
" NERDtree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jistr/vim-nerdtree-tabs'

" **************  COLOR SCHEME  ************** " 
Plugin 'flazz/vim-colorschemes'

" **************  CODE SNIPPETS  ************** " 
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required (filetype plugin on to ignore indent)
" ^^^^^^^^^^^^^^^  VUNDLE END  ^^^^^^^^^^^^^^^ " 



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



" **************  MAP TO OPEN UP NERDTREE  ************** " 
map <Leader>n <plug>NERDTreeTabsToggle<CR>



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



" **************  ECLIM ULTISNIPS [NOTE]  ************** " 
" For eclim UltiSnips add the code from the 2nd comment 
" in this post: http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme



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
