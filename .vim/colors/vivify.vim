set background=dark "or light
highlight clear
if exists("syntax_on")
	syntax reset
endif
let g:colors_name = "vivify"
set t_Co=256

highlight Boolean             guifg=#9090f0 ctermfg=104 guibg=#101520 ctermbg=68  gui=bold cterm=bold
highlight CTagsClass          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalConstant guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalVariable guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsImport         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsMember         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Character           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Comment             guifg=#70c010 ctermfg=70                            gui=none cterm=none
highlight Conditional         guifg=#90ee90 ctermfg=114                           gui=none cterm=none
highlight Constant            guifg=#f0b040 ctermfg=179 guibg=#101520 ctermbg=68  gui=none cterm=none
highlight Cursor              guifg=#101520 ctermfg=68  guibg=#c0c0c0 ctermbg=7   gui=none cterm=none
highlight CursorColumn        guifg=#eeeeee ctermfg=255 guibg=#003853 ctermbg=24  gui=none cterm=none
highlight CursorLine          guifg=#eeeeee ctermfg=255 guibg=#252530 ctermbg=60  gui=none cterm=none
highlight Debug               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Define              guifg=#bcd2ee ctermfg=153                           gui=none cterm=none
highlight DefinedName         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Delimiter           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight DiffAdd             guifg=#8090f0 ctermfg=105 guibg=#101520 ctermbg=68  gui=none cterm=none
highlight DiffChange          guifg=#8090f0 ctermfg=105 guibg=#101520 ctermbg=68  gui=none cterm=none
highlight DiffDelete          guifg=#8090f0 ctermfg=105 guibg=#101520 ctermbg=68  gui=none cterm=none
highlight DiffText            guifg=#9090f0 ctermfg=104 guibg=#101520 ctermbg=68  gui=bold cterm=bold
highlight Directory           guifg=#f0f0f0 ctermfg=255 guibg=#101520 ctermbg=68  gui=bold cterm=bold
highlight EnumerationName     guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight EnumerationValue    guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Error               guifg=#ee1111 ctermfg=196 guibg=#101520 ctermbg=68  gui=none cterm=none
highlight ErrorMsg            guifg=#ee1111 ctermfg=196 guibg=#101520 ctermbg=68  gui=none cterm=none
highlight Exception           guifg=#90ee90 ctermfg=114                           gui=bold cterm=bold
highlight Float               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight FoldColumn          guifg=#c0c0c0 ctermfg=7   guibg=#102010 ctermbg=71  gui=bold cterm=bold
highlight Folded              guifg=#c0c0c0 ctermfg=7   guibg=#101520 ctermbg=68  gui=bold cterm=bold
highlight Function            guifg=#f0f0f0 ctermfg=255                           gui=none cterm=none
highlight Identifier          guifg=#f0a0b0 ctermfg=204                           gui=none cterm=none
highlight Ignore              guifg=#204050 ctermfg=74                            gui=none cterm=none
highlight IncSearch           guifg=#101520 ctermfg=68  guibg=#c0c0c0 ctermbg=7   gui=none cterm=none
highlight Include             guifg=#a2b5cd ctermfg=110                           gui=none cterm=none
highlight Keyword             guifg=#90ee90 ctermfg=114                           gui=bold cterm=bold
highlight Label               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight LineNr              guifg=#606570 ctermfg=68  guibg=#000000 ctermbg=0   gui=bold cterm=bold
highlight LocalVariable       guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Macro               guifg=#8db6cd ctermfg=74                            gui=none cterm=none
highlight MatchParen          guifg=#000000 ctermfg=0   guibg=#90e030 ctermbg=118 gui=none cterm=none
highlight ModeMsg             guifg=#c0c0c0 ctermfg=7   guibg=#101520 ctermbg=68  gui=none cterm=none
highlight MoreMsg             guifg=#c0c0c0 ctermfg=7   guibg=#101520 ctermbg=68  gui=bold cterm=bold
highlight NonText             guifg=#606060 ctermfg=59  guibg=#202530 ctermbg=68  gui=none cterm=none
highlight Normal              guifg=#b0b0b0 ctermfg=145 guibg=#101520 ctermbg=68  gui=none cterm=none
highlight Number              guifg=#9090f0 ctermfg=104 guibg=#101520 ctermbg=68  gui=none cterm=none
highlight Operator            guifg=#7fff00 ctermfg=118                           gui=none cterm=none
highlight PMenu               guifg=#c0c0c0 ctermfg=7   guibg=#202530 ctermbg=68  gui=bold cterm=bold
highlight PMenuSbar           guifg=#c0c0c0 ctermfg=7   guibg=#505050 ctermbg=239 gui=bold cterm=bold
highlight PMenuSel            guifg=#101520 ctermfg=68  guibg=#f0f0f0 ctermbg=255 gui=bold cterm=bold
highlight PMenuThumb          guifg=#f0f0f0 ctermfg=255 guibg=#006400 ctermbg=22  gui=bold cterm=bold
highlight PreCondit           guifg=#a4d3ee ctermfg=117                           gui=none cterm=none
highlight PreProc             guifg=#f0f0f0 ctermfg=255                           gui=none cterm=none
highlight Question            guifg=#c0c0c0 ctermfg=7   guibg=#101520 ctermbg=68  gui=bold cterm=bold
highlight Repeat              guifg=#4eee94 ctermfg=85                            gui=none cterm=none
highlight Search              guifg=#101520 ctermfg=68  guibg=#c0c0c0 ctermbg=7   gui=none cterm=none
highlight SignColumn          guifg=#eeeeee ctermfg=255 guibg=#101520 ctermbg=68  gui=none cterm=none
highlight Special             guifg=#f0f0f0 ctermfg=255 guibg=#101520 ctermbg=68  gui=bold cterm=bold
highlight SpecialChar         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpecialComment      guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpecialKey          guifg=#606060 ctermfg=59  guibg=#101520 ctermbg=68  gui=none cterm=none
highlight SpellBad            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellCap            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellLocal          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellRare           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Statement           guifg=#f0a0b0 ctermfg=204                           gui=none cterm=none
highlight StatusLine          guifg=#000000 ctermfg=0   guibg=#808080 ctermbg=8   gui=bold cterm=bold
highlight StatusLineNC        guifg=#404040 ctermfg=238 guibg=#707070 ctermbg=242 gui=none cterm=none
highlight StorageClass        guifg=#add8e6 ctermfg=81                            gui=none cterm=none
highlight String              guifg=#00e5ee ctermfg=14  guibg=#101520 ctermbg=68  gui=none cterm=none
highlight Structure           guifg=#add8e6 ctermfg=81                            gui=none cterm=none
highlight TabLine             guifg=#b0b0b0 ctermfg=145 guibg=#000000 ctermbg=0   gui=underline cterm=underline
highlight TabLineFill         guifg=#b0b0b0 ctermfg=145 guibg=#000000 ctermbg=0   gui=none cterm=none
highlight TabLineSel          guifg=#9090f0 ctermfg=104 guibg=#000000 ctermbg=0   gui=underline cterm=underline
highlight Tag                 guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Title               guifg=#9090f0 ctermfg=104 guibg=#101520 ctermbg=68  gui=bold cterm=bold
highlight Todo                guifg=#9090f0 ctermfg=104 guibg=#101520 ctermbg=68  gui=none cterm=none
highlight Type                guifg=#f0a0b0 ctermfg=204                           gui=none cterm=none
highlight Typedef             guifg=#add8e6 ctermfg=81                            gui=none cterm=none
highlight Underlined          guifg=#c0c0c0 ctermfg=7                             gui=underline cterm=underline
highlight Union               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight VertSplit           guifg=#808080 ctermfg=8   guibg=#808080 ctermbg=8   gui=none cterm=none
highlight Visual              guifg=#cae682 ctermfg=192 guibg=#000000 ctermbg=0   gui=underline cterm=underline
highlight VisualNOS           guifg=#b0b0b0 ctermfg=145 guibg=#101520 ctermbg=68  gui=bold,underline cterm=bold,underline
highlight WarningMsg          guifg=#ee1111 ctermfg=196 guibg=#101520 ctermbg=68  gui=bold cterm=bold
highlight WildMenu            guifg=#000000 ctermfg=0   guibg=#c0c0c0 ctermbg=7   gui=bold cterm=bold
highlight pythonBuiltin       guifg=#b0b0b0 ctermfg=145                           gui=none cterm=none

