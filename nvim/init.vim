" PLUG PLUGIN MANAGER
"vim default plugin installation
call plug#begin('~/.config/nvim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tc50cal/vim-terminal'
	Plug 'nanotech/jellybeans.vim'
	Plug 'preservim/tagbar'
	Plug 'EdenEast/nightfox.nvim'
	Plug 'ap/vim-css-color'
	Plug 'cocopon/iceberg.vim'
	Plug 'morhetz/gruvbox'

	Plug 'neovim/nvim-lspconfig'
	Plug 'hrsh7th/nvim-compe'
	Plug 'simrat39/rust-tools.nvim'
	Plug 'mfussenegger/nvim-jdtls'
	Plug 'p00f/clangd_extensions.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'nvim-treesitter/nvim-treesitter'

	Plug 'jiangmiao/auto-pairs'
	Plug 'lervag/vimtex'
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors
set background=dark " or light if you want light mode

hi Normal ctermbg=NONE
colorscheme gruvbox
let g:jellybeans_background_color_256='NONE'
highlight Normal ctermbg=NONE guibg=NONE

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


" vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexrun'
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex'
let maplocalleader = ","

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

luafile ~/.config/nvim/lua/compe-config.lua
luafile ~/.config/nvim/lsp/python.lua
luafile ~/.config/nvim/lsp/bash.lua
luafile ~/.config/nvim/lsp/c.lua
"luafile ~/.config/nvim/lsp/java.lua
luafile ~/.config/nvim/lsp/rust.lua
luafile ~/.config/nvim/lsp/asm.lua

