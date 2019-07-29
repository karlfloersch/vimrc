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
Plugin 'posva/vim-vue'
" **************  C LANG COMPLETION  ************** " 
Plugin 'rdnetto/YCM-Generator'
" **************  SOLIDITY SYNTAX  ************** "
Plugin 'tomlion/vim-solidity'
" **************  PYTHON SYNTAX  ************** "
" Plugin 'nvie/vim-flake8'
" **************  TYPESCRIPT SYNTAX  ************** "
Plugin 'leafgarland/typescript-vim'
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

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

" **************  GIT POWERLINE  ************** "
Plugin 'vim-airline/vim-airline'

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
set clipboard=unnamed
"set clipboard=unnamedplus



" **************  MAP TO OPEN UP NERDTREE  ************** " 
map <Leader>n <plug>NERDTreeTabsToggle<CR>



" **************  GREP CURRENT WORD  ************** " 
nnoremap <leader>* :execute "vimgrep /" . expand("<cword>") . "/j ../../**/*.py" <Bar> cw<CR>


" **************  SET ESLINT AS SYNTAX CHECKER  ************** "
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_css_checkers = ['stylelint']
let g:syntastic_c_checkers = ['cppcheck']
let g:syntastic_c_checkers = ['cppcheck']
let g:syntastic_python_checkers = ['flake8']
" let g:syntastic_python_flake8_post_args='--mypy-config=/Users/karlfloersch/.mypyconfig'


" **************  SET ESLINT AS SYNTAX CHECKER  ************** "
let g:PyFlakeOnWrite = 1


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
set softtabstop=2
set expandtab
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab


" **************  INDENT SETTINGS FOR SOLIDITY  ************** "
autocmd BufRead,BufNewFile   *.sol setlocal ts=4 sts=4 sw=4


" **************  USE HARD TABS FOR INDENT  ************** " 
"set shiftwidth=2
"set tabstop=2



" **************  YANK UNTIL EOL  ************** " 
map Y y$



" **************  UN-HIGHLIGHT SEARCH  ************** " 
nnoremap <C-L> :nohl<CR><C-L>



"------------------------------------------------------------
"
"
" vvvvvvvvvvvvvvv  PLUG START  vvvvvvvvvvvvvvv "
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" if has('nvim')
"   Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" else
"   Plug 'Shougo/deoplete.nvim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
" endif
" let g:deoplete#enable_at_startup = 1

" Solidity!
Plug 'sohkai/syntastic-local-solhint'

Plug 'w0rp/ale'
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'css': ['prettier'],
\}

" Initialize plugin system
call plug#end()
" ^^^^^^^^^^^^^^^  PLUG END  ^^^^^^^^^^^^^^^ "
