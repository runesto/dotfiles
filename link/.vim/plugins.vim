" ==============================================================================
" A collection of language packs for Vim.
" https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

" ==============================================================================
Plug 'jordwalke/vim-one'
if !exists('g:one_allow_italics')
  " Italics don't typically render well in terminals
  let g:one_allow_italics = has('gui_running')
endif

" ==============================================================================
Plug 'dense-analysis/ale'

" ==============================================================================
Plug 'ctrlpvim/ctrlp.vim'
source ~/.vim/pluginrc/ctrlp.vim

" ==============================================================================
Plug 'scrooloose/nerdcommenter'
let g:NERDCompactSexyComs = 0
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'

" ==============================================================================
Plug 'connorholyday/vim-snazzy'

" ==============================================================================
Plug 'scrooloose/nerdtree'
source ~/.vim/pluginrc/nerdtree.vim

" ==============================================================================
Plug 'itchyny/lightline.vim'
source ~/.vim/pluginrc/lightline.vim