filetype off

execute pathogen#infect()
Helptags

filetype on

""" misc stuff
set ruler
set relativenumber
syntax on
set backspace=indent,eol,start
let mapleader = " "
set noswapfile
" vim Directory same as current file
set autochdir

" Tab handling
filetype plugin indent on " Indentation scripts can be specified in indent/ folder
set ai
set tabstop=4
set shiftwidth=4
set expandtab

" Easier buffer switching
nnoremap <tab> :buffers<CR>:buffer<Space>

""" Window split related things
map <leader>w <C-W>
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

set splitbelow
set splitright

""" Random cool mappings
" Quicker exit of insert mode
inoremap jk <Esc>
" Easier saving
nnoremap <leader>s :w<CR>

""" Fuzzy Finder mappings
nnoremap <leader>o :FufFile<CR>
" Recursive file search through directories
nnoremap <leader>O :FufFile **/<CR>
" Search inside current file
nnoremap <leader>f :FufLine<CR>
nnoremap <leader>d :FufDir<CR>

" --------- COLORS  -----------
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
