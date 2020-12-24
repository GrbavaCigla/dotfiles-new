syntax on
set mouse=a
set autoread
set autoindent
set belloff=all
set confirm
set cursorline
set encoding=utf8
set expandtab
set foldenable
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set magic
set nocompatible
set nowrap
set number relativenumber
set ruler
set shiftwidth=4
set showcmd
set showmatch
set tabstop=4
set wildmenu
set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'dracula/vim', {'name': 'dracula'}
Plugin 'vim-airline/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-vinegar'
Plugin 'cespare/vim-toml'
Plugin 'calviken/vim-gdscript3'
call vundle#end()
" map <C-n> :Explore<CR>
colorscheme dracula
filetype plugin indent on
" let g:netrw_winsize=15
" autocmd VimEnter * Lex | execute "wincmd l" | term bash
" autocmd VimEnter * execute "wincmd r"
" autocmd VimEnter * resize 6
command JsonFormat :%!python -m json.tool
hi Normal guibg=NONE ctermbg=NONE
