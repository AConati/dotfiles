
filetype plugin indent on

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
call plug#end()

let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }

" ale linter options
let g:ale_python_flake8_options='--ignore=E501' " ignore >80 char lines warning python

set tabstop=4
set shiftwidth=4    
set softtabstop=4   
set expandtab       
set smarttab
set number          
set smartindent
set autoindent
set cursorline
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set ruler
set wildmenu
set wildmode=longest:full,full
set hidden
set laststatus=2
set timeoutlen=1000
set ttimeoutlen=0

set pastetoggle=<F2>

nnoremap j gj
nnoremap k gk

let mapleader="\<Space>"

nmap <leader>fr :%s///g<left><left>
nmap <leader>frl :s///g<left><left>
nnoremap <Leader><space> :nohlsearch<CR>

map <C-n> :NERDTreeToggle<CR>

cmap w!! w !sudo tee % >/dev/null 


" Java specific
autocmd FileType java inoremap { {<return><backspace>}<esc>O

syntax enable
colorscheme molokai
" colorscheme badwolf

