set background=dark
highlight clear

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'doom-fairy-floss'

hi Normal guifg=#f8f8f0 guibg=#5a5475 gui=NONE
" hi NormalNC

" UI {{{

" Text area {{{

"hi Conceal
hi ColorColumn guifg=fg guibg=#a8a4b1 gui=NONE
hi Directory guifg=#c5a3ff guibg=NONE gui=NONE
hi MatchParen guifg=#f8f8f0 guibg=#e6c000 gui=NONE
"hi SpecialKey
"hi Whitespace

" }}}

" Side columns {{{

hi LineNr guifg=#a8a4b1 guibg=NONE gui=NONE " fg is not defined on the original theme. It was taken using Digital Color Meter
hi EndOfBuffer guifg=#5a5475 guibg=#5a5475 gui=NONE
hi NonText guifg=#a8a4b1 guibg=NONE gui=NONE " fg is not defined on the original theme. It was taken using Digital Color Meter
hi SignColumn guifg=#a8a4b1 guibg=NONE gui=NONE
hi VertSplit guifg=#373348 guibg=bg gui=NONE

" }}}

" Command line {{{

hi ErrorMsg guifg=#f8f8f0 guibg=#f92672 gui=NONE
" MsgSeparator
"hi ModeMsg
hi MoreMsg guifg=#c2ffdf guibg=bg gui=NONE
hi Question guifg=#c2ffdf guibg=bg gui=NONE
hi Title guifg=fg guibg=NONE gui=bold
hi WarningMsg guifg=#f8f8f0 guibg=#f92672 gui=NONE

" }}}

" Completion {{{

hi Pmenu guifg=fg guibg=#ff857f gui=NONE
hi PmenuSel guifg=fg guibg=#ae81ff gui=NONE
"hi PmenuSbar
"hi PmenuThumb

" }}}

" Cursor {{{

"hi Cursor
"hi CursorIM
hi CursorColumn guifg=NONE guibg=#716799 gui=NONE
hi! link CursorLine CursorColumn
hi CursorLineNr guifg=#a8a4b1 guibg=#716799 gui=bold " fg is not defined on the original theme. It was taken using Digital Color Meter

" }}}

" Diff {{{

hi DiffAdd guifg=bg guibg=#c2ffdf gui=NONE
hi DiffChange guifg=#f92672 guibg=#f8f8f0 gui=NONE
hi DiffDelete guifg=#f92672 guibg=bg gui=NONE
hi DiffText guifg=#f8f8f0 guibg=#f92672 gui=NONE

" }}}

" Folds {{{

"hi FoldColumn
hi Folded guifg=#8076aa guibg=NONE gui=NONE

" }}}

" Search / Substitution {{{

hi IncSearch guifg=bg guibg=#c2ffdf gui=NONE
hi Search guifg=#ffffff guibg=#8076aa gui=NONE
hi Substitute guifg=#f8f8f0 guibg=#f92672 gui=NONE
"hi QuickFixLine

" }}}

" Selection {{{

hi Visual guifg=NONE guibg=#8077A8 gui=NONE
"hi VisualNOS

" }}}

" Spelling {{{

hi SpellBad guifg=NONE guibg=NONE gui=undercurl
"hi SpellCap
"hi SpellLocal
"hi SpellRare

" }}}

" Status line {{{

hi StatusLine guifg=#f8f8f0 guibg=#373348 gui=NONE
hi StatusLineNC guifg=#a8a4b1 guibg=#373348 gui=NONE
hi WildMenu guifg=bg guibg=#c2ffdf gui=bold

" }}}

"Whichkey

hi WhichKey guifg=#C2FFDF
hi WhichKeySeparator guifg=#ae9414
hi WhichKeyDesc guifg=#4c94ad
hi WhichKeyValue guifg=#4c94ad
hi WhichKeyFloat guibg=#343145
hi WhichKeyGroup guifg=#C5A3FF

" Indent Lines
hi IndentBlanklineChar guifg=#3f444a guibg=NONE gui=NONE

" Tabline {{{

hi TabLine guifg=#a8a4b1 guibg=#373348 gui=NONE
hi TabLineFill guifg=#a8a4b1 guibg=#373348 gui=NONE
hi TabLineSel guifg=#a8a4b1 guibg=bg gui=NONE

" }}}

" Terminal {{{

let g:terminal_color_0='#979797' " Black
let g:terminal_color_1='#ff857f' " Red
let g:terminal_color_2='#716799' " Green
let g:terminal_color_3='#e6c000' " Yellow
let g:terminal_color_4='#167be2' " Blue
let g:terminal_color_5='#ae81ff' " Magenta
let g:terminal_color_6='#55b3cc' " Cyan
let g:terminal_color_7='#dfdfdf' " White
let g:terminal_color_8='#b5b2bd' " Bright black
let g:terminal_color_9='#f92672' " Bright red
let g:terminal_color_10='#8077a8' " Bright green
let g:terminal_color_11='#96cbfe' " Bright blue
let g:terminal_color_12='#fff352' " Bright yellow
let g:terminal_color_13='#c5a3ff' " Bright magenta
let g:terminal_color_14='#c2ffdf' " Bright cyan
let g:terminal_color_15='#f8f8f8' " Bright white

"hi StatusLineTerm
"hi StatusLineTermNC
"hi TermCursor
"hi TermCursorNC

" }}}

" }}}

" Text {{{

hi Comment guifg=#e6c000 guibg=NONE gui=NONE

hi Constant guifg=#c5a3ff guibg=NONE gui=NONE
hi String guifg=#ffea00 guibg=NONE gui=NONE
hi Character guifg=#c5a3ff guibg=NONE gui=NONE
hi Number guifg=#c5a3ff guibg=NONE gui=NONE
hi Boolean guifg=#c5a3ff guibg=NONE gui=NONE
hi Float guifg=#c5a3ff guibg=NONE gui=NONE

hi Identifier guifg=#c2ffdf guibg=NONE gui=italic
hi Function guifg=#fff352 guibg=NONE gui=NONE

hi Statement guifg=#ffb8d1 guibg=NONE gui=NONE
hi Conditional guifg=#ffb8d1 guibg=NONE gui=NONE
"hi Repeat
hi Label guifg=#ffea00 guibg=NONE gui=NONE
hi Operator guifg=#ffb8d1 guibg=NONE gui=NONE
hi Keyword guifg=#ffb8d1 guibg=NONE gui=NONE
"hi Exception

hi PreProc guifg=#ffb8d1 guibg=NONE gui=NONE
"hi Include
hi Define guifg=#ffb8d1 guibg=NONE gui=NONE
"hi Macro
"hi PreCondit

hi Type guifg=#fff352 guibg=NONE gui=NONE
hi StorageClass guifg=#ffb8d1 guibg=NONE gui=italic
hi Structure guifg=#fff352 guibg=NONE gui=NONE
"hi Typedef

hi Special guifg=#ff857f guibg=NONE gui=NONE
"hi SpecialChar
hi Tag guifg=#ffb8d1 guibg=NONE gui=NONE
"hi Delimiter
"hi SpecialComment
"hi Debug

hi Underlined guifg=NONE guibg=NONE gui=underline

"LSP
hi LspDiagnosticsUnderlineHint guifg=#729cb3 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignError guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignWarning guifg=#ff8800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignInformation guifg=#ffcc66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsSignHint guifg=#4fc1ff ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextError guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextWarning guifg=#ff8800 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextInformation guifg=#ffcc66 ctermfg=221 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi LspDiagnosticsVirtualTextHint guifg=#4fc1ff ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" Git
hi diffAdded guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#d16969 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffFileId guifg=#569cd6 ctermfg=74 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi diffFile guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffNewFile guifg=#608b4e ctermfg=65 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffOldFile guifg=#d16969 ctermfg=167 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

"Buffers
"hi BufferCurrent guifg=#abb2bf ctermfg=249 guibg=#1e1e1e ctermbg=234 gui=NONE cterm=NONE
"hi BufferCurrentIndex guifg=#569cd6 ctermfg=74 guibg=#1e1e1e ctermbg=234 gui=NONE cterm=NONE
"hi BufferCurrentMod guifg=#abb2bf ctermfg=249 guibg=#1e1e1e ctermbg=234 gui=NONE cterm=NONE
"hi BufferCurrentSign guifg=#569cd6 ctermfg=74 guibg=#1e1e1e ctermbg=234 gui=NONE cterm=NONE
"hi BufferCurrentTarget guifg=#d16969 ctermfg=167 guibg=#1e1e1e ctermbg=234 gui=bold cterm=bold
"hi BufferVisible guifg=#abb2bf ctermfg=249 guibg=#1e1e1e ctermbg=234 gui=NONE cterm=NONE
"hi BufferVisibleIndex guifg=#abb2bf ctermfg=249 guibg=#1e1e1e ctermbg=234 gui=NONE cterm=NONE
"hi BufferVisibleMod guifg=#abb2bf ctermfg=249 guibg=#1e1e1e ctermbg=234 gui=NONE cterm=NONE
"hi BufferVisibleSign guifg=#abb2bf ctermfg=249 guibg=#1e1e1e ctermbg=234 gui=NONE cterm=NONE
"hi BufferVisibleTarget guifg=#d16969 ctermfg=167 guibg=#1e1e1e ctermbg=234 gui=bold cterm=bold
"hi BufferInactive guifg=#858585 ctermfg=102 guibg=#2e2e2e ctermbg=236 gui=NONE cterm=NONE
"hi BufferInactiveIndex guifg=#858585 ctermfg=102 guibg=#2e2e2e ctermbg=236 gui=NONE cterm=NONE
"hi BufferInactiveMod guifg=#858585 ctermfg=102 guibg=#2e2e2e ctermbg=236 gui=NONE cterm=NONE
"hi BufferInactiveSign guifg=#858585 ctermfg=102 guibg=#2e2e2e ctermbg=236 gui=NONE cterm=NONE
"hi BufferInactiveTarget guifg=#d16969 ctermfg=167 guibg=#2e2e2e ctermbg=236 gui=bold cterm=bold

"hi Ignore

hi Error guifg=#f8f8f0 guibg=#f92672 gui=NONE

hi Todo guifg=#e6c000 guibg=NONE gui=inverse,bold

hi rubyClass guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyFunction guifg=#fff352 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter guifg=NONE guibg=NONE gui=NONE
hi rubySymbol guifg=#c5a3ff guibg=NONE gui=NONE
hi rubyConstant guifg=#c2ffdf guibg=NONE gui=italic
hi rubyStringDelimiter guifg=#ffea00 guibg=NONE gui=NONE
hi rubyBlockParameter guifg=#ff857f guibg=NONE gui=italic
hi rubyInstanceVariable guifg=NONE guibg=NONE gui=NONE
hi rubyInclude guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyGlobalVariable guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp guifg=#ffea00 guibg=NONE gui=NONE
hi rubyRegexpDelimiter guifg=#ffea00 guibg=NONE gui=NONE
hi rubyEscape guifg=#c5a3ff guibg=NONE gui=NONE
hi rubyControl guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyClassVariable guifg=NONE guibg=NONE gui=NONE
hi rubyOperator guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyException guifg=#ffb8d1 guibg=NONE gui=NONE
hi rubyPseudoVariable guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass guifg=#c2ffdf guibg=NONE gui=italic
hi rubyRailsARAssociationMethod guifg=#c2ffdf guibg=NONE gui=NONE
hi rubyRailsARMethod guifg=#c2ffdf guibg=NONE gui=NONE
hi rubyRailsRenderMethod guifg=#c2ffdf guibg=NONE gui=NONE
hi rubyRailsMethod guifg=#c2ffdf guibg=NONE gui=NONE

hi erubyDelimiter guifg=NONE guibg=NONE gui=NONE
hi erubyComment guifg=#e6c000 guibg=NONE gui=NONE
hi erubyRailsMethod guifg=#c2ffdf guibg=NONE gui=NONE

hi htmlTag guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag guifg=NONE guibg=NONE gui=NONE
hi htmlTagName guifg=NONE guibg=NONE gui=NONE
hi htmlArg guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar guifg=#c5a3ff guibg=NONE gui=NONE

hi javaScriptFunction guifg=#c2ffdf guibg=NONE gui=italic
hi javaScriptRailsFunction guifg=#c2ffdf guibg=NONE gui=NONE
hi javaScriptBraces guifg=NONE guibg=NONE gui=NONE

hi yamlKey guifg=#ffb8d1 guibg=NONE gui=NONE
hi yamlAnchor guifg=NONE guibg=NONE gui=NONE
hi yamlAlias guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader guifg=#ffea00 guibg=NONE gui=NONE

hi cssURL guifg=#ff857f guibg=NONE gui=italic
hi cssFunctionName guifg=#c2ffdf guibg=NONE gui=NONE
hi cssColor guifg=#c5a3ff guibg=NONE gui=NONE
hi cssPseudoClassId guifg=#fff352 guibg=NONE gui=NONE
hi cssClassName guifg=#fff352 guibg=NONE gui=NONE
hi cssValueLength guifg=#c5a3ff guibg=NONE gui=NONE
hi cssCommonAttr guifg=#c2ffdf guibg=NONE gui=NONE
hi cssBraces guifg=NONE guibg=NONE gui=NONE

" }}}

" vim: foldenable foldmethod=marker
