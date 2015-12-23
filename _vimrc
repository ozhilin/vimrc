filetype off

if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after,$HOME/vimrc
endif

execute pathogen#infect()
Helptags

filetype on

""" 
""" misc settings and mappings
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
set fdo-=search

" Quicker exit of insert mode
inoremap jk <Esc>
" Easier saving
nnoremap <leader>s :w<CR>
" Better move to beginning of line (ignores whitespace at the beginning)
nnoremap 0 g^
" Copy/Paste to/from clipboard
nnoremap <leader>p "*p 
nnoremap <leader>y "*y
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

" Tab handling
filetype plugin indent on " Indentation scripts can be specified in indent/ folder
set ai      " Auto indentation
set tabstop=4
set shiftwidth=4
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

"
" Toggling numbers
"
function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set norelativenumber
  else
    set relativenumber
    set nonumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

"""
""" PLUGIN RELATED STUFF
"""

"""
""" Lightline settings
"""
set laststatus=2
set noshowmode
"let g:lightline = {
      "\ 'colorscheme': 'solarized',
      "\ }

"""
""" Pandoc settings
"""
let g:pandoc#folding#fold_fenced_codeblocks = 1

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
endif

set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar 
set guioptions-=r "remove right scroll-bar 
set guioptions-=L "remove left scroll-bar 
