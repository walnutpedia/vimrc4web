
" ======================================
" Vimrc for Web Developers
" author: walnutzhang  https://github.com/walnutzhang
" version: 1.0, 2016-10-09
" =======================================


" ======================================
" Common Settings
" =======================================

set t_Co=256
set ts=2
set shiftwidth=2
set expandtab
set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
set number
set tabstop=2
set fileencodings=utf-8,gb18030,gbk,gb2312
set hidden
set clipboard=unnamed   " enable copy text from vim to other software in OS X
filetype plugin indent on
syntax on
colorscheme termschool 

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
\ endif |
\ endif


" ======================================
" Plugin Management Powered by vim-plug 
" ======================================

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim', {'for': ['html', 'css']}
Plug 'jelera/vim-javascript-syntax', {'for': 'javascript'}
Plug 'mxw/vim-jsx'
Plug 'wakatime/vim-wakatime'

call plug#end()

" Emmet 
let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_mode='a'

" ctrlp
let g:ctrlp_custom_ignore = '\v[\/](node_modules)|(\.(swp|ico|git|svn))$'

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-c> :NERDTreeFind<CR>
let NERDTreeAutoDeleteBuffer=1
