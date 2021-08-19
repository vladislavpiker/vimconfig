set nocompatible
set nu

" tabs and indent
set tabstop=4 
set shiftwidth=4
set softtabstop=4
set smarttab
set autoindent
set smartindent
set expandtab
filetype plugin indent on

" highlight
syntax on
set hlsearch
set incsearch
nmap <F3> :noh <CR>

" shared clipboard
set clipboard=unnamedplus

" NERDTree
nmap <F2> :NERDTreeToggle<CR>

" python run on <F5>
autocmd FileType python nnoremap <buffer> <F5> :!python3 %<CR>


" plugins
call plug#begin('~/.vim/plugged')
Plug 'crusoexia/vim-monokai' " secondary coloscheme
Plug 'glepnir/oceanic-material' "colorscheme
Plug 'preservim/nerdtree' " project tree
Plug 'skanehira/preview-markdown.vim'
call plug#end()

" colorscheme
color oceanic_material
set t_Co=256


" python highlight
let python_highlight_all = 1
"python highlight self in class
augroup python
    autocmd!
    autocmd FileType python
                \   syn keyword pythonSelf self
                \ | highlight def link pythonSelf Special
augroup end
"




