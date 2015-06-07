execute pathogen#infect()

colorscheme darkblue
set relativenumber
syntax on
set backspace=indent,eol,start
let mapleader = " "

" vim Directory same as current file
set autochdir

" Easier buffer switching
nnoremap <tab> :buffers<CR>:buffer<Space>

" Window split related things
map <leader>w <C-W>
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

set splitbelow
set splitright

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

" Fuzzy Finder mappings
nnoremap <leader>b :FufBuffer<ENTER>
nnoremap <leader>o :FufFile<ENTER>
