" PLUG PLUGIN MANAGER
"
call plug#begin('~/.local/share/nvim/plugged')
    Plug 'ellisonleao/gruvbox.nvim'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-surround' " YSW
	Plug 'tpope/vim-commentary'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tc50cal/vim-terminal'
	" Plug 'terryma/vim-multiple-cursors' " CTRL+n for new cursors
	Plug 'preservim/tagbar'
	Plug 'neoclide/coc.nvim'
	Plug 'jiangmiao/auto-pairs'
	Plug 'ap/vim-css-color'
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
set background=dark " or light if you want light mode
colorscheme gruvbox



filetype on
filetype plugin on
filetype indent on

syntax on

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview
