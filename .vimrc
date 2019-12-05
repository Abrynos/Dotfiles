set nocompatible
syntax on
filetype on
filetype plugin on
filetype indent on
set autoread
set background=dark
" ------------------------------------------------------------------
" ---------------------- PLUGIN CONFIGURATION ----------------------
" ------------------------------------------------------------------

" initiate Vundle
let &runtimepath.=',$HOME/.vim/bundle/Vundle.vim'

" start Plugin list
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'isRuslan/vim-es6'
Plugin 'posva/vim-vue'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jreybert/vimagit'
Plugin 'lervag/vimtex'

" end Plugin list
call vundle#end()

" ------------------------------------------------------------------
" ---------------------- PLUGIN CONFIGURATION ----------------------
" ------------------------------------------------------------------
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_exit_from_visual_mode = 0
let g:multi_cursor_exit_from_insert_mode = 0
let g:multi_cursor_start_key = '<C-m>'
let g:multi_cursor_next_key = '<C-m>'
let g:multi_cursor_quit_key = '<Esc>'

let g:vimtex_latexmk_enabled = 0

" ------------------------------------------------------------------
" -------------------------- KEYBINDINGS ---------------------------
" ------------------------------------------------------------------
map <C-n> :NERDTreeToggle<CR>
map <tab> :tabn<cr>
map <S-Tab> :tabp<cr>
map q :q<cr>
map <space> :wincmd w<cr>

xnoremap p "0p
inoremap <Nul> <C-n>

" ------------------------------------------------------------------
" -------------------------- AUTO COMMANDS -------------------------
" ------------------------------------------------------------------
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ------------------------------------------------------------------
" ---------------------------- SETTINGS ----------------------------
" ------------------------------------------------------------------
set number
set foldmethod=indent
set foldlevel=200
set switchbuf=usetab,newtab

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

