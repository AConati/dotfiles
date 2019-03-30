
filetype plugin indent on

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
call plug#end()

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

set pastetoggle=<F2>

nnoremap j gj
nnoremap k gk

let mapleader="\<Space>"

nmap <leader>fr :%s///g<left><left>
nmap <leader>frl :s///g<left><left>
nmap <silent> ,/ :nohlsearch<CR>

map <C-n> :NERDTreeToggle<CR>

cmap w!! w !sudo tee % >/dev/null 

syntax enable
colorscheme molokai
" colorscheme badwolf

