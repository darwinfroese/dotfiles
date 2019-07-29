call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }
Plug 'udalov/kotlin-vim'
Plug 'rust-lang/rust.vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'airblade/vim-gitgutter'

call plug#end()

set background=dark
set number
set relativenumber
set laststatus=2
set noshowmode
set tabstop=4
set shiftwidth=4
set softtabstop=0 
set expandtab
set hlsearch
set smartcase
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set noswapfile
set signcolumn=yes
set updatetime=100

let g:gitgutter_enabled = 1

let g:gruvbox_italic = '0'
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_termcolors = '16'

let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

let g:fzf_action = {
	\ 'ctrl-t': 'tab split',
	\ 'ctrl-x': 'split',
	\ 'ctrl-v': 'vsplit' }
let g:fzf_colors = {
	\ 'fg': 			[ 'fg', 'Normal' ],
	\ 'bg':				[ 'bg', 'Normal' ],
	\ 'hl':				[ 'fg', 'Comment' ],
	\ 'fg+':			[ 'fg', 'CursorLine', 'CursorColumn', 'Normal' ],
	\ 'bg+':			[ 'bg', 'CursorLine', 'CursorColumn' ],
	\ 'hl+':			[ 'fg', 'Statement' ],
	\ 'info': 		    [ 'fg', 'PreProc' ],
	\ 'border':	 	    [ 'fg', 'Ignore' ],
	\ 'prompt': 	    [ 'fg', 'Conditional' ],
	\ 'pointer':        [ 'fg', 'Exception' ],
	\ 'marker': 	    [ 'fg', 'Keyword' ],
	\ 'spinner': 	    [ 'fg', 'Label' ],
	\ 'header': 	    [ 'fg', 'Comment' ] }

nnoremap <C-p> :FZF<Cr>
nnoremap <silent> <Space> :noh<Bar>:echo<CR>

" removing keys that should not be used
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Home> <NOP>
noremap <End> <NOP>
noremap <PageUp> <NOP>
noremap <PageDown> <NOP>

set rtp+=~/.fzf

colorscheme gruvbox
