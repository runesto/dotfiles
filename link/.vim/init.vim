" Mostly
set noswapfile     " Don't make backups.
set nowritebackup " Even if you did make a backup, don't keep it around.
set nobackup

syntax on
set virtualedit=block
set tabstop=2
set number
set noswapfile

set mouse=a
set nospell
set ic
set scs

" TODO: Set up mappings to toggle between text mode and code mode.
" Editing code
set nowrap
set wrapmargin=0
" let &textwidth=exists('g:textColumns') && !empty(g:textColumns) ? g:textColumns : 80
set nolinebreak

set hlsearch
set formatoptions+=or

let &tabstop=exists('g:tabSize') ? g:tabSize : 2
let &softtabstop=exists('g:tabSize') ? g:tabSize : 2
let &shiftwidth=exists('g:tabSize') ? g:tabSize : 2
set expandtab
set ignorecase
set infercase
let g:omni_syntax_ignorecase=1
set wildmode=full
set wildignore+=*/node_modules/**
set sm!  " show matching brace/paren

" Disable visualbell by default
" http://unix.stackexchange.com/a/5313
set visualbell
set t_vb=

" Should avoid "Hit Enter" annoyingness (Does *not* work)
" The final c gets rid of annoying autocomplete messages.
try
  set shortmess+=filmnrxoOtTc
catch /E539: Illegal character/
  " Some versions do not like c
  set shortmess+=filmnrxoOtT
endtry
" Disable Vim's startup screen
set shortmess+=I
" Customize:
" http://vi.stackexchange.com/questions/627/how-can-i-change-vims-start-or-intro-screen


set wildignore+=*.DS_Store
set wildignore+=*/.ssh
set wildignore+=*/.yarn
set wildignore+=*/.npm
set wildignore+=*/.git

" Remove ugly folds
set nofoldenable
" nofoldenable doesn't work in diff mode so do something similar
set diffopt=filler,context:9999

" ============= Configure as Privacy Plugin =========================
" All sensitive data is not stored in your ~/.vimrc folder
" Configure the spelling language and file.
" ================================================================
set spelllang=en
set spellfile=$HOME/vim_spell/en.utf-8.add
" UndoDir:
let s:homeFolder = $HOME
if (exists('g:vimBoxUndoDir'))
  let s:undoDir = g:vimBoxUndoDir
else
  let s:undoDir = s:homeFolder . '/vimUndo'
endif
set undofile
" " Create undo dir if needed - not in your dotVim folder! It should be local to
" " your computer.
if !isdirectory(s:undoDir)
  call mkdir(s:undoDir)
endif
execute "set undodir=".s:undoDir
" Since your file/folder history may show up in a git commit!
let g:netrw_dirhistmax=0
" ================================================================




" iTerm requires the following commented code to be placed in your .bashrc in
" order for Vim to show full 256 colors.
" export CLICOLOR=1
" export TERM='xterm-256color'
" if [ -e /usr/share/terminfo/x/xterm-256color ]; then
"   export TERM='xterm-256color'
" else
"   #export TERM='xterm-color'
"   export TERM=xterm-256color
" fi
" If your terminal does *not* support 256 color, if if you want better than
" 256, and are willing to limit to base16 colorschemes you enable this:
" (You probably also need the base16 colorscheme shell script to exist
" somewhere in your path) - See the base16 docs.
" let base16colorspace="256"
set t_Co=256

if (has("termguicolors"))
  set termguicolors
endif

if (has("nvim"))
  " source ~/.vim/neo.vim
endif

call plug#begin()

" Load all the plugins
source ~/.vim/plugins.vim

call plug#end()

" MacVim Quick Start is pretty strange. It's as if it always opens the *next*
" MacVim window whenever you open the currently visible one.
" So this prompt applies to the *next* window you'll open typically - in that
" case.
" Notice the ! not
if !len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  " Everything's already installed. Configure the plugins
  source ~/.vim/gui-settings.vim
  source ~/.vim/keys.vim
  source ~/.vim/functions.vim
  " Some vim reset plugin screws up listchars
  set listchars = "eol:$"
  " source ~/.vim/vimrc.custom.after
else
  " Don't show statusline when airline might not be loaded or configured.
  if exists("g:gui_oni") || has('gui') && has('mac') && has('gui_running')
    set background=dark
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    " The backticks and echo make it work better in terminal env
    autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) && 1==confirm("Download and Install Plugins?", "&Yes\n&No", 1)
      \|   set laststatus=0
      \|   PlugInstall --sync | echomsg "Open a new window to enjoy the plugins!" | let xx=confirm("Open a New Window For Plugins to Take Effect.")
      \| endif
    " Source the settings just in case they respond with "No, don't update plugins"
    source ~/.vim/gui-settings.vim
    source ~/.vim/keys.vim
    source ~/.vim/functions.vim

    " Some vim reset plugin screws up listchars
    set listchars = "eol:$"
  else
    set laststatus=0
    echomsg "Attempting to install plugins. Be patient. Vim is working in the background. It will start eventually."
    PlugInstall --sync
    source ~/.vim/gui-settings.vim
    source ~/.vim/keys.vim
    source ~/.vim/functions.vim
    " Some vim reset plugin screws up listchars
    set listchars = "eol:$"
  endif
endif
