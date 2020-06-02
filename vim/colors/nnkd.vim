" vim:foldmethod=marker:foldlevel=0

" mono1 = 8 bright black
" mono2 = 0 black
" mono3 = 7 white
" mono4 = 15 bright white

hi Normal  cterm=none ctermbg=none ctermfg=none
hi Comment cterm=none ctermbg=none ctermfg=0
"       *Comment         any comment

hi Constant cterm=none ctermbg=none ctermfg=green
"       *Constant        any constant
"        String          a string constant: "this is a string"
"        Character       a character constant: 'c', '\n'
"        Number          a number constant: 234, 0xff
"        Boolean         a boolean constant: TRUE, false
"        Float           a floating point constant: 2.3e10

hi Identifier cterm=none ctermbg=none ctermfg=blue
"       *Identifier      any variable name
"        Function        function name (also: methods for classes)
"
hi Statement cterm=bold ctermbg=none ctermfg=none
"       *Statement       any statement
"        Conditional     if, then, else, endif, switch, etc.
"        Repeat          for, do, while, etc.
"        Label           case, default, etc.
"        Operator        "sizeof", "+", "*", etc.
"        Keyword         any other keyword
"        Exception       try, catch, throw

hi PreProc cterm=bold ctermbg=none ctermfg=15
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

hi Type cterm=bold ctermbg=none ctermfg=15
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

hi Special cterm=none ctermbg=none ctermfg=cyan
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        Delimiter       character that needs attention
"        SpecialComment  special things inside a comment
"        Debug           debugging statements

hi Underlined cterm=none ctermbg=none ctermfg=none
"       *Underlined      text that stands out, HTML links

hi Ignore cterm=none ctermbg=none ctermfg=none
"       *Ignore          left blank, hidden  |hl-Ignore|

hi Error cterm=none ctermbg=none ctermfg=red
"       *Error           any erroneous construct

hi Todo cterm=none ctermbg=none ctermfg=yellow
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
"
hi Keyword cterm=bold ctermbg=none ctermfg=green

hi Visual cterm=none ctermbg=8 ctermfg=none

hi MatchParen   cterm=none ctermbg=none ctermfg=blue

" autocomplete results
hi Pmenu        cterm=none ctermbg=8 ctermfg=white
hi PmenuSel     cterm=none ctermbg=white ctermfg=8

hi CursorLine   cterm=none ctermbg=8 ctermfg=none
hi CursorLineNr cterm=bold ctermbg=none ctermfg=blue

hi LineNr       cterm=none ctermbg=none ctermfg=black

" Textwidth column
hi colorcolumn  cterm=none ctermbg=8 ctermfg=none

hi Folded       cterm=none ctermbg=none ctermfg=white
hi TabLine      cterm=none ctermbg=none ctermfg=grey

hi Search       cterm=bold ctermbg=magenta ctermfg=white
hi IncSearch    cterm=bold ctermbg=magenta ctermfg=white

hi QuickFixLine cterm=none ctermbg=black ctermfg=white

" Split between panes
" hi VertSplit    cterm=none ctermbg=none ctermfg=black
hi VertSplit    cterm=bold ctermbg=none ctermfg=8

" Status bar
hi StatusLine     cterm=bold ctermbg=8 ctermfg=white
hi StatusLineNC   cterm=none ctermbg=8 ctermfg=0

" Markdown
hi link markdownH1 Special
hi link markdownH2 Special
hi link markdownH3 Special
hi link markdownH4 Special
hi link markdownH5 Special
hi link markdownH6 Special

" Neomake
hi NeomakeErrorSign cterm=none ctermbg=none ctermfg=red
hi NeomakeWarningSign cterm=none ctermbg=none ctermfg=yellow
hi SignColumn cterm=none ctermbg=none ctermfg=white

" Quickfix
hi link qfFileName Identifier

hi DiffAdd    cterm=none ctermfg=green ctermbg=8
hi DiffDelete cterm=none ctermfg=red   ctermbg=8
hi DiffChange cterm=none ctermfg=green ctermbg=8
hi DiffText   cterm=none ctermfg=green ctermbg=8

" Language specific
hi GoString cterm=none ctermbg=none ctermfg=blue


" Extra VIM highlighting.
hi vimOption    cterm=none ctermbg=none ctermfg=blue
hi vimUserFunc  cterm=bold ctermbg=none ctermfg=3
hi vimCommand   cterm=bold ctermbg=none ctermfg=3
hi vimParenSep  cterm=none ctermbg=none ctermfg=white 
hi vimVar       cterm=none ctermbg=none ctermfg=white 
hi vimFuncName  cterm=none ctermbg=none ctermfg=yellow 
hi vimIsCommand cterm=none ctermbg=none ctermfg=yellow 


" LSP 
hi LspErrorText cterm=bold ctermbg=none ctermfg=red 
hi LspErrorLine cterm=bold ctermbg=none ctermfg=red 
hi LspWarningText cterm=bold ctermbg=none ctermfg=yellow 
hi LspInformationText cterm=bold ctermbg=none ctermfg=white 
