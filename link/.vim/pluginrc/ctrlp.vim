" Splitting rightwards helps preserve a left nav when opening ctrlp.
" TODO: Disable ctrlp for network mount use
set splitright
"jump to existing buffer on ANY open command (split/tab/etc).
let g:ctrlp_switch_buffer="ETVH"

" Open ctrlp with cmd+p (MacVIM) or ctrl+p
let g:ctrlp_map = '<D-p>'
let g:ctrlp_map = '<C-p>'

" search anything (in files, buffers and MRU files at the same time.)
let g:ctrlp_cmd = 'CtrlPMixed'
"search for nearest ancestor like .git, .hg, else the directory of the current file
let g:ctrlp_working_path_mode = 'a'
" show the match window at the top of the screen
let g:ctrlp_match_window_bottom = 1
" maxiumum height of match window
" See other match window setting
" let g:ctrlp_max_height = 10
let g:ctrlp_match_window = 'bottom,order:btt,min:13,max:13'
" enable caching
let g:ctrlp_use_caching = 1
" speed up by not removing clearing cache evertime
let g:ctrlp_clear_cache_on_exit=0
" show me dotfiles
let g:ctrlp_show_hidden = 1
" number of recently opened files
let g:ctrlp_mruf_max = 250
let g:ctrlp_max_depth = 7
let g:ctrlp_max_files = 30000


" See https://github.com/kien/ctrlp.vim/issues/389
let g:ctrlp_prompt_mappings = {
      \ 'CreateNewFile()':      [''],
      \ 'ToggleType(1)':        ['<c-u>', '<c-up>'],
      \ 'ToggleType(-1)':       ['<c-y>', '<c-down>'],
      \ 'PrtCurLeft()':         ['<c-b>', '<left>', '<c-^>'],
      \ 'PrtCurRight()':        ['<c-f>', '<right>'],
      \ 'AcceptSelection("e")': ['<c-t>'],
      \ 'AcceptSelection("h")': ['<c-v>'],
      \ 'AcceptSelection("v")': ['<c-s>'],
      \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
      \ 'PrtClearCache()':      ['<D-C>'],
      \ 'PrtDeleteEnt()':       ['<F7>'],
      \ 'PrtExit()':            ['<c-l>', '<esc>', '<c-c>', '<c-g>'],
      \ }

" TODO: add javascript and some other languages who doesn't have ctags support
" coffee: https://gist.github.com/michaelglass/5210282
" go: http://stackoverflow.com/a/8236826/462233
" objc:  http://www.gregsexton.org/2011/04/objective-c-exuberant-ctags-regex/
" rust: https://github.com/mozilla/rust/blob/master/src/etc/ctags.rust
let g:ctrlp_buftag_types = {
      \ 'go'     	   : '--language-force=go --golang-types=ftv',
      \ 'coffee'     : '--language-force=coffee --coffee-types=cmfvf',
      \ 'markdown'   : '--language-force=markdown --markdown-types=hik',
      \ 'objc'       : '--language-force=objc --objc-types=mpci',
      \ 'rc'         : '--language-force=rust --rust-types=fTm'
      \ }


