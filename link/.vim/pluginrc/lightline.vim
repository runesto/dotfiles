
let g:lightline = {
      \ 'colorscheme': 'minimal',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename' ] ],
      \   'right': [ [ 'percent' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'readonly', 'filename' ] ],
      \   'right': [ [ 'percent' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'mode': 'LightlineMode',
      \   'filename': 'LightlineFilename',
      \   'filetype': 'LightlineFiletype',
      \   'percent': 'LightlinePercent',
      \ },
      \ }
set laststatus=2

function! LightlineReadonly()
  return &readonly && &filetype !~# '\v(help|nerdtree)' ? 'RO' : ''
endfunction

function! LightlineMode()
  return  expand('%:t') ==# 'ControlP' ? 'CtrlP' :
        \ &filetype ==# 'nerdtree' ? '' :
        \ lightline#mode()
endfunction

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  return  expand('%:t') ==# 'ControlP' ? '' :
        \ &filetype ==# 'nerdtree' ? '' :
        \ filename
endfunction

function! LightlineFiletype()
  return  expand('%:t') ==# 'ControlP' ? '' :
        \ &filetype ==# 'nerdtree' ? '' :
        \ &filetype
endfunction

function! LightlinePercent()
  return  expand('%:t') ==# 'ControlP' ? '' :
        \ &filetype ==# 'nerdtree' ? '' :
        \ line('.') * 100 / line('$') . '%'
endfunction