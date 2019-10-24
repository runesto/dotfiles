"
"						*map-overview* *map-modes*
"
"   Overview of which map command works in which mode.  More details below.
"        COMMANDS                    MODES ~
"   :map   :noremap  :unmap     Normal, Visual, Select, Operator-pending
"   :nmap  :nnoremap :nunmap    Normal
"   :vmap  :vnoremap :vunmap    Visual and Select
"   :smap  :snoremap :sunmap    Select
"   :xmap  :xnoremap :xunmap    Visual
"   :omap  :onoremap :ounmap    Operator-pending
"   :map!  :noremap! :unmap!    Insert and Command-line
"   :imap  :inoremap :iunmap    Insert
"   :lmap  :lnoremap :lunmap    Insert, Command-line, Lang-Arg
"   :cmap  :cnoremap :cunmap    Command-line
"
"
"       COMMANDS				      MODES ~
"                  Normal  Visual+Select  Operator-pending ~
"   :map   :noremap   :unmap   :mapclear	 yes	    yes		   yes
"   :nmap  :nnoremap  :nunmap  :nmapclear	 yes	     -		    -
"   :vmap  :vnoremap  :vunmap  :vmapclear	  -	    yes		    -
"   :omap  :onoremap  :ounmap  :omapclear	  -	     -		   yes


inoremap <C-s> <esc>:w<cr>                 " save files
nnoremap <C-s> :w<cr>
inoremap <C-d> <esc>:wq!<cr>               " save and exit
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>

" == c-l escapes and saves
vmap <C-l> <Esc><Cr>
imap <C-l> <Esc>l
map <c-l> <Esc>
"while selecting (for use in snippets c-l cancels out)
smap <C-l> <Esc>
" While commanding
cmap <C-l> <C-c>

" NerdComment
vmap <C-_> <Plug>NERDCommenterToggle
nmap <C-_> <Plug>NERDCommenterToggle
vmap <D-/> <Plug>NERDCommenterToggle
nmap <D-/> <Plug>NERDCommenterToggle