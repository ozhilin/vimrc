" vim: se ff=unix :
filetype off

if has('win32') || has('win64')
  call plug#begin('~/vimfiles/plugins')
else
  call plug#begin('~/.vim/plugins')
endif

" Dependencies for snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'unblevable/quick-scope'
Plug 'Townk/vim-autoclose'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-abolish'
call plug#end()

filetype on

" Space as leader
let mapleader = " "

""" 
""" misc settings and mappings
"""
set ruler
set relativenumber
syntax on
" rational backspace
set backspace=indent,eol,start
" pray for no crashes
set noswapfile
" Visual autocomplete for command menu
set wildmenu
" Redraw only when we need to.
set lazyredraw

" Quicker exit of insert mode
inoremap jk <Esc>
" Don't select first element when doing ctrl-n
inoremap <C-Space> <C-n><C-p>
" Easier saving
nnoremap <leader>s :w<CR>
" Better move to beginning of line (ignores whitespace at the beginning)
nnoremap 0 g^
nnoremap ^ 0
" Copy/Paste to/from clipboard
nnoremap <leader>p "*p 
nnoremap <leader>y "*y
vnoremap <leader>y "*y

" Flip " and ' so that registers are easier to use
nnoremap " '
nnoremap ' "
vnoremap " '
vnoremap ' "

" Open/Close folds with tab
nnoremap <tab> za
nnoremap <S-tab> zc
" Show pressed keys in normal mode
set showcmd

"""
""" Searching configurations
"""
set incsearch   " search as characters are entered
set hlsearch    " highlight matches
nnoremap  <CR> :nohl<CR>      
" Search as characters are entered
set incsearch
" Highlight matches
set hlsearch
" Remove all highlights
nnoremap <CR> :nohl<CR>
" Call :difft
nnoremap  <leader>dt :difft<CR>      
nnoremap  <leader>do :diffo<CR>      

set ignorecase
set smartcase

" Tab handling
filetype plugin indent on " Indentation scripts can be specified in indent/ folder
" auto indentation
set ai
set tabstop=2
set shiftwidth=2
set expandtab

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
""" Tab mappings
"""
nnoremap <leader>t :tabnew<CR>

"""
""" PLUGIN RELATED STUFF
"""

"""
""" Lightline settings
"""
set laststatus=2
set noshowmode

"""
""" Pandoc settings
"""
let g:pandoc#folding#fold_fenced_codeblocks = 1

"""
""" Quick-scope mappings
"""
nmap <leader>q <plug>(QuickScopeToggle)

"""
""" Scratch plugin mappings
"""
nnoremap <leader>g :Scratch<CR>

"""
""" APPEARANCE RELATED STUFF
"""
" GUI fonts
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif

  set guioptions-=m "remove menu bar
  set guioptions-=T "remove toolbar 
  set guioptions-=r "remove right scroll-bar 
  set guioptions-=L "remove left scroll-bar 
  set guioptions-=e "remove menu bar
  set guitablabel=%t
endif
