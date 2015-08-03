filetype off

execute pathogen#infect()
Helptags

filetype on

""" 
""" misc stuff
"""
set ruler
set relativenumber
syntax on
set backspace=indent,eol,start  " Rational backspace
let mapleader = " "
set noswapfile  " Pray for no crashes
set autochdir   " vim Directory same as current file

set wildmenu    " visual autocomplete for command menu
set lazyredraw  " redraw only when we need to.

set incsearch   " search as characters are entered
set hlsearch    " highlight matches
nnoremap <leader>n :nohlsearch<CR>      " Remove all highlights

" Tab handling
filetype plugin indent on " Indentation scripts can be specified in indent/ folder
set ai      " Auto indentation
set tabstop=4
set shiftwidth=4
set expandtab

" Automatic opening of agenda
nnoremap <leader>a :vs <C-r>=g:org_main<CR><CR>

" Easier buffer switching
nnoremap <tab> :buffers<CR>:buffer<Space>

"""
""" Window split related things
"""
map <leader>w <C-W>
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

set splitbelow
set splitright

"""
""" Random cool mappings
"""
" Quicker exit of insert mode
inoremap jk <Esc>
" Easier saving
nnoremap <leader>s :w<CR>
" Better move to beginning of line
nnoremap 0 g^

"""
""" Quick-scope mappings
"""
nmap <leader>q <plug>(QuickScopeToggle)

"""
""" Fuzzy Finder mappings
"""
nnoremap <leader>b :FufBuffer<CR>
nnoremap <leader>o :FufFile<CR>
" Recursive file search through directories
nnoremap <leader>O :FufFile **/<CR>
" Search inside current file
nnoremap <leader>f :FufLine<CR>
nnoremap <leader>d :FufDir<CR>

"""
" --------- COLORS  -----------
"""
set background=dark
colorscheme peaksea

" GUI fonts
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
