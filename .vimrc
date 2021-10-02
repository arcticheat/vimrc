" PLUGINS ---------------------------------------------------------------- {{{
call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'morhetz/gruvbox'
  Plug 'joshdick/onedark.vim'
  Plug 'itchyny/lightline.vim'
"  Plug 'jremmen/vim-ripgrep'
"  Plug 'tpope/vim-fugitive'
"  Plug 'leafgarland/typescript-vim'
"  Plug 'vim-utils/vim-man'
"  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'ycm-core/YouCompleteMe'
"  Plug 'mbbill/undotree'
call plug#end()
" }}}

" MAPPINGS --------------------------------------------------------------- {{{
    let mapleader = " "
    nnoremap <leader>u :UndotreeToggle<CR>
    nnoremap <leader>h <C-w>h<CR>
    nnoremap <leader>j <C-w>j<CR>
    nnoremap <leader>k <C-w>k<CR>
    nnoremap <leader>l <C-w>l<CR>
    nnoremap <leader>t  
    nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
    nnoremap <leader>ps :Rg<SPACE>
    nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
    nnoremap <silent> <Leader>gf: YcmCompleter FixIt<CR>
    nnoremap Y y$
" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:lightline = {
            \ 'colorscheme': 'onedark',
            \ }

set path=$PWD/**
set number
set nowrap
syntax on
" Indents
set expandtab
set tabstop=4 shiftwidth=4
set smarttab
set autoindent
" Search
set ignorecase
set smartcase
set hlsearch
set incsearch
" Wildmenu
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" Backup/Swap
set noswapfile
set backup
set undodir=~/.vim/undodir
set undofile
" Colors
set background=dark
set t_Co=256
colorscheme onedark
" Misc.
set showmatch
set cursorline
set nocompatible
filetype on
filetype plugin on
filetype indent on
set noerrorbells
set scrolloff=10
set showcmd
set showmode
set history=50
let g:airline_theme='onedark'
" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2
" }}}
