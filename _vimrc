filetype off

if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after,$HOME/vimrc
endif

let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'VimCompletesMe')

if has('win32') || has('win64')
  source ~\vimrc\bundle\vim-snipmate\after\plugin\snipMate.vim
endif

execute pathogen#infect()
Helptags

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
" Vim Directory same as current file
set autochdir
" Visual autocomplete for command menu
set wildmenu
" Redraw only when we need to.
set lazyredraw

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
" Search as characters are entered
set incsearch
" Highlight matches
set hlsearch
" Remove all highlights
nnoremap <CR> :nohl<CR>

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

"""
""" Tab mappings
"""
nnoremap <leader>t :tabnew<CR>

set splitbelow
set splitright

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
endif
