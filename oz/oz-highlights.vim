let g:oz_hlignore = {}

" keywords to ignore in filetypes
let g:oz_hlignore['java']        = []
let g:oz_hlignore['vim']        = ['function', 'if', 'else', 'endif', 'let']
let g:oz_hlignore['python']     = ['def', 'class', 'for', 'while']
let g:oz_hlignore['javascript'] = ['var', 'for', 'while', 'if', 'else', 'function']
let g:oz_hlignore['js']         = ['var', 'for', 'while', 'if', 'else', 'function']

function! HighlightWordUnderCursor()
  if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]' 
    let ft = &ft
    let word = expand('<cword>')

    " If filetype ignored, don't highlight
    if has_key(g:oz_hlignore, ft)
      let ign = get(g:oz_hlignore, ft)
      if index(ign, word) > -1
        match none 
      else
        silent! exec 'match' 'Function' '/\V\<'.word.'\>/' 
      endif
    endif
  endif
endif
endfunction

