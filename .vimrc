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
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" start plugin defintion
Plugin 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'isRuslan/vim-es6'
Plugin 'posva/vim-vue'
Plugin 'skammer/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'whiteinge/diffconflicts'

" end plugin definition
call vundle#end()

" ------------------------------------------------------------------
" ---------------------- CUSTOM CONFIGURATION ----------------------
" ------------------------------------------------------------------
map <C-n> :NERDTreeToggle<CR>
map <tab> :tabn<cr>
map <S-Tab> :tabp<cr>
map d :wincmd w<cr> 
map q :q<cr>
map w :w<cr>
map <C-g> :DiffConflicts<cr>
"map 2 :diffget 2<cr>:diffu<cr>
"map 3 :diffget 3<cr>:diffu<cr>
xnoremap p "0p
inoremap <Nul> <C-n>

set number
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set foldmethod=indent
set foldlevel=200

