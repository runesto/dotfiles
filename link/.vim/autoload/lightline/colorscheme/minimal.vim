" =============================================================================
" Filename: minimal.vim
" Author: Øyind Mathinsen
" =============================================================================

" Common colors
let s:fg     = [ '#abb2bf', 145 ]
let s:blue   = [ '#61afef', 75 ]
let s:green  = [ '#98c379', 76 ]
let s:purple = [ '#c678dd', 176 ]
let s:red1   = [ '#e06c75', 168 ]
let s:red2   = [ '#be5046', 168 ]
let s:yellow = [ '#e5c07b', 180 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

" Dark variant
let s:bg     = [ '#282a36', 224]
let s:gray1  = [ '#636d83', 241 ]
let s:gray2  = [ '#636d83', 235 ]
let s:gray3  = [ '#636d83', 240 ]
let s:none = ['NONE', 'NONE']

let s:p.normal.left     = [ [ s:green, s:none, 'bold' ], [ s:gray3, s:none, 'italic' ] ]
let s:p.normal.middle   = [ [ s:gray2, s:none ] ]
let s:p.inactive.left   = [ [ s:gray3,  s:none, 'italic'], [ s:gray3, s:none ] ]
let s:p.inactive.middle = [ [ s:gray3, s:none ] ]
let s:p.inactive.right  = [ [ s:gray3, s:none ] ]
let s:p.insert.left     = [ [ s:blue, s:none, 'bold' ], [s:gray3, s:none, 'italic' ] ]
let s:p.replace.left    = [ [ s:red1, s:none, 'bold' ], [s:gray3, s:none, 'italic' ] ]
let s:p.visual.left     = [ [ s:purple, s:none, 'bold' ], [s:gray3, s:none, 'italic' ] ]

" Common
let s:p.normal.right   = [ [ s:gray3, s:none ], [ s:gray3, s:none ] ]
let s:p.normal.error   = [ [ s:red2,   s:none ] ]
let s:p.normal.warning = [ [ s:yellow, s:none ] ]
let s:p.insert.right   = [ [ s:gray3, s:none ], [s:gray3, s:none ] ]
let s:p.replace.right  = [ [ s:gray3, s:none ], [s:gray3, s:none ] ]
let s:p.visual.right   = [ [ s:gray3, s:none ], [s:gray3, s:none ] ]
let s:p.tabline.left   = [ [ s:gray3, s:none ] ]
let s:p.tabline.tabsel = [ [ s:bg, s:purple, 'bold' ] ]
let s:p.tabline.middle = [ [ s:gray3, s:gray2 ] ]
let s:p.tabline.right  = copy(s:p.normal.right)

let g:lightline#colorscheme#minimal#palette = lightline#colorscheme#flatten(s:p)
