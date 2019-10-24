if has('gui')
  if has("gui_macvim")
    macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-c-f>
    macmenu &Tools.Make key=<nop>

    " From subvim:
    " Disable print shortcut for 'goto anything...'
    macmenu File.Print key=<nop>
  endif
endif

set visualbell
set t_vb=