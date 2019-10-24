" Close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" How can I open a NERDTree automatically when vim starts up if no files were specified?
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" not so much cruft
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowBookmarks = 1

" files shown
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\~$', '.git']

" map <C-n> :NERDTreeToggle<CR>
map <C-n> :NERDTreeFocus<CR>