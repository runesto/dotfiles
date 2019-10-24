""" FocusMode
function! ToggleFocusMode()
  if (&foldcolumn != 7)
    set laststatus=0
    set foldcolumn=7
    set nonumber
    set noruler
  else
    set laststatus=2
    set foldcolumn=0
    set ruler
    set number
  endif
endfunc
nnoremap <F1> :call ToggleFocusMode()<cr>