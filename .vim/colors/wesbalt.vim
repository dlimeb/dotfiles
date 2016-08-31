" Vim color file
" Converted from Textmate theme Wesbalt using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Wesbalt"

"hi Cursor ctermfg=17 ctermbg=220 cterm=NONE guifg=#122B34 guibg=#ffc600 gui=NONE
hi Cursor ctermfg=17 ctermbg=220 cterm=NONE guifg=#122B34 guibg=#009900 gui=NONE
hi Visual ctermfg=NONE ctermbg=25 cterm=NONE guifg=NONE guibg=#0050a4 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#0d3a58 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#0d3a58 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=23 cterm=NONE guifg=NONE guibg=#0d3a58 gui=NONE
hi LineNr ctermfg=103 ctermbg=23 cterm=NONE guifg=#6C7F8C guibg=#122B34 gui=NONE
hi VertSplit ctermfg=60 ctermbg=60 cterm=NONE guifg=#6C7F8C guibg=#122B34 gui=NONE
hi MatchParen ctermfg=214 ctermbg=NONE cterm=NONE guifg=#122B34 guibg=#f0c674 gui=NONE
hi StatusLine ctermfg=15 ctermbg=60 cterm=bold guifg=#eeeeee guibg=#4a6b82 gui=bold
hi StatusLineNC ctermfg=15 ctermbg=60 cterm=NONE guifg=#eeeeee guibg=#4a6b82 gui=NONE
hi Pmenu ctermfg=220 ctermbg=NONE cterm=NONE guifg=#E0CB43 guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=25 cterm=NONE guifg=NONE guibg=#0050a4 gui=NONE
hi IncSearch ctermfg=17 ctermbg=76 cterm=NONE guifg=#122B34 guibg=#aaaaaa gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#122B34 guibg=#aaaaaa gui=NONE
hi Directory ctermfg=204 ctermbg=NONE cterm=NONE guifg=#D9738E guibg=NONE gui=NONE
hi Folded ctermfg=33 ctermbg=17 cterm=NONE guifg=#0088ff guibg=#122B34 gui=NONE

hi Normal ctermfg=15 ctermbg=17 cterm=NONE guifg=#cccccc guibg=#122B34 gui=NONE
hi Boolean ctermfg=204 ctermbg=NONE cterm=NONE guifg=#D9738E guibg=NONE gui=NONE
hi Character ctermfg=204 ctermbg=NONE cterm=NONE guifg=#D9738E guibg=NONE gui=NONE
hi Comment ctermfg=33 ctermbg=NONE cterm=NONE guifg=#6C7F8C guibg=NONE gui=italic
hi Conditional ctermfg=214 ctermbg=NONE cterm=NONE guifg=#E0A443 guibg=NONE gui=NONE
hi Constant ctermfg=204 ctermbg=NONE cterm=NONE guifg=#D9738E guibg=NONE gui=NONE
hi Define ctermfg=214 ctermbg=NONE cterm=NONE guifg=#E0A443 guibg=NONE gui=NONE
hi DiffAdd ctermfg=15 ctermbg=64 cterm=bold guifg=#eeeeee guibg=#3e8515 gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#830910 guibg=NONE gui=NONE
hi DiffChange ctermfg=15 ctermbg=23 cterm=NONE guifg=#eeeeee guibg=#103d6b gui=NONE
hi DiffText ctermfg=15 ctermbg=24 cterm=bold guifg=#eeeeee guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=88 cterm=NONE guifg=#f8f8f8 guibg=#800f00 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=88 cterm=NONE guifg=#f8f8f8 guibg=#800f00 gui=NONE
hi Float ctermfg=204 ctermbg=NONE cterm=NONE guifg=#D9738E guibg=NONE gui=NONE
hi Function ctermfg=220 ctermbg=NONE cterm=NONE guifg=#E0CB43 guibg=NONE gui=NONE
hi Identifier ctermfg=220 ctermbg=NONE cterm=NONE guifg=#E0CB43 guibg=NONE gui=NONE
hi Keyword ctermfg=214 ctermbg=NONE cterm=NONE guifg=#E0A443 guibg=NONE gui=NONE
hi Label ctermfg=76 ctermbg=NONE cterm=NONE guifg=#82C769 guibg=NONE gui=NONE
hi NonText ctermfg=220 ctermbg=23 cterm=NONE guifg=#6C7F8C guibg=#122B34 gui=NONE
hi Number ctermfg=204 ctermbg=NONE cterm=NONE guifg=#D9738E guibg=NONE gui=NONE
hi Operator ctermfg=214 ctermbg=NONE cterm=NONE guifg=#E0A443 guibg=NONE gui=NONE
hi PreProc ctermfg=214 ctermbg=NONE cterm=NONE guifg=#E0A443 guibg=NONE gui=NONE
hi Special ctermfg=15 ctermbg=NONE cterm=NONE guifg=#eeeeee guibg=NONE gui=NONE
hi SpecialKey ctermfg=220 ctermbg=23 cterm=NONE guifg=#ffc600 guibg=#0d3a58 gui=NONE
hi Statement ctermfg=214 ctermbg=NONE cterm=NONE guifg=#E0A443 guibg=NONE gui=NONE
hi StorageClass ctermfg=220 ctermbg=NONE cterm=NONE guifg=#E0CB43 guibg=NONE gui=NONE
hi String ctermfg=76 ctermbg=NONE cterm=NONE guifg=#82C769 guibg=NONE gui=NONE
hi Tag ctermfg=220 ctermbg=NONE cterm=NONE guifg=#E0CB43 guibg=NONE gui=NONE
hi Title ctermfg=15 ctermbg=NONE cterm=NONE guifg=#cccccc guibg=NONE gui=NONE
hi Todo ctermfg=33 ctermbg=NONE cterm=inverse,bold guifg=#0088ff guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=220 ctermbg=NONE cterm=NONE guifg=#E0CB43 guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline


" Language specific
hi rubyClass ctermfg=214 ctermbg=NONE cterm=NONE guifg=#E0A443 guibg=NONE gui=NONE
hi rubyFunction ctermfg=220 ctermbg=NONE cterm=NONE guifg=#E0CB43 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=204 ctermbg=NONE cterm=NONE guifg=#D9738E guibg=NONE gui=NONE
hi rubyConstant ctermfg=121 ctermbg=NONE cterm=NONE guifg=#80ffbb guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=76 ctermbg=NONE cterm=NONE guifg=#82C769 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=252 ctermbg=23 cterm=NONE guifg=#cccccc guibg=#0d3a58 gui=NONE
hi rubyInstanceVariable ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff80e1 guibg=NONE gui=NONE
hi rubyInclude ctermfg=214 ctermbg=NONE cterm=NONE guifg=#E0A443 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=252 ctermbg=23 cterm=NONE guifg=#cccccc guibg=#0d3a58 gui=NONE
hi rubyRegexp ctermfg=121 ctermbg=NONE cterm=NONE guifg=#80ffc2 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=121 ctermbg=NONE cterm=NONE guifg=#80ffc2 guibg=NONE gui=NONE
hi rubyEscape ctermfg=204 ctermbg=NONE cterm=NONE guifg=#D9738E guibg=NONE gui=NONE
hi rubyControl ctermfg=214 ctermbg=NONE cterm=NONE guifg=#E0A443 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=252 ctermbg=23 cterm=NONE guifg=#cccccc guibg=#0d3a58 gui=NONE
hi rubyOperator ctermfg=214 ctermbg=NONE cterm=NONE guifg=#E0A443 guibg=NONE gui=NONE
hi rubyException ctermfg=214 ctermbg=NONE cterm=NONE guifg=#E0A443 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=212 ctermbg=NONE cterm=NONE guifg=#ff80e1 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=121 ctermbg=NONE cterm=NONE guifg=#80ffbb guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb054 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb054 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb054 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb054 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=195 ctermbg=NONE cterm=NONE guifg=#e1efff guibg=NONE gui=NONE
hi erubyComment ctermfg=33 ctermbg=NONE cterm=NONE guifg=#0088ff guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb054 guibg=NONE gui=NONE
hi htmlTag ctermfg=159 ctermbg=NONE cterm=NONE guifg=#8fc4c4 guibg=NONE gui=NONE
hi htmlEndTag ctermfg=159 ctermbg=NONE cterm=NONE guifg=#8fc4c4 guibg=NONE gui=NONE
hi htmlTagName ctermfg=159 ctermbg=NONE cterm=NONE guifg=#8fc4c4 guibg=NONE gui=NONE
hi htmlArg ctermfg=159 ctermbg=NONE cterm=NONE guifg=#8fc4c4 guibg=NONE gui=NONE
hi htmlLink ctermfg=159 ctermbg=NONE cterm=NONE guifg=#5EABD3 guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=204 ctermbg=NONE cterm=NONE guifg=#D9738E guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=220 ctermbg=NONE cterm=NONE guifg=#E0CB43 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb054 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=220 ctermbg=NONE cterm=NONE guifg=#E0CB43 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=252 ctermbg=23 cterm=NONE guifg=#cccccc guibg=#0d3a58 gui=NONE
hi yamlAlias ctermfg=252 ctermbg=23 cterm=NONE guifg=#cccccc guibg=#0d3a58 gui=NONE
hi yamlDocumentHeader ctermfg=76 ctermbg=NONE cterm=NONE guifg=#82C769 guibg=NONE gui=NONE
hi cssURL ctermfg=252 ctermbg=23 cterm=NONE guifg=#cccccc guibg=#0d3a58 gui=NONE
hi cssFunctionName ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb054 guibg=NONE gui=NONE
hi cssColor ctermfg=204 ctermbg=NONE cterm=NONE guifg=#D9738E guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=220 ctermbg=NONE cterm=NONE guifg=#E0CB43 guibg=NONE gui=NONE
hi cssClassName ctermfg=220 ctermbg=NONE cterm=NONE guifg=#E0CB43 guibg=NONE gui=NONE
hi cssValueLength ctermfg=204 ctermbg=NONE cterm=NONE guifg=#D9738E guibg=NONE gui=NONE
hi cssBraces ctermfg=195 ctermbg=NONE cterm=NONE guifg=#e1efff guibg=NONE gui=NONE
hi link cssCommonAttr cssPositioningAttr
hi link cssBraceError cssBraces
hi link htmlScriptTag htmlTag
hi link VimwikiHeader1 String
hi link VimwikiHeader2 Statement
hi link VimwikiHeader3 Function
hi link VimwikiHeaderChar Comment
hi link VimwikiList htmlTag
hi link VimwikiListTodo Constant
hi link VimwikiCode String
hi link VimwikiLink htmlLink
hi link VimwikiLinkChar Constant
hi link VimwikiHr Comment
hi link NERDTreeOpenable Comment
hi link NERDTreeClosable Comment
hi link NERDTreePart Comment
hi link NERDTreePartFile Comment
"hi link NERDTreeFile Comment

highlight link cssDeprecated cssFontProp
highlight clear Todo
highlight Todo guifg=#333 guibg=yellow2 gui=bold
highlight UnwantedSpaces guibg=#7C0111
match UnwantedSpaces /\s\+$\|\s\t\|\t\s/
