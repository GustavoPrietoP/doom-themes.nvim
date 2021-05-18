" ----------------------------------------------------------------- "
" name   flatwhite           "
" description Another Vim port of          "
"    https://github.com/biletskyy/flatwhite-syntax  "
" author  kamil.stachowski@gmail.com       "
" version  0.1 (2016.11.23)         "
" license  GPLv3+            "
" ----------------------------------------------------------------- "

" - preamble ---------------------------------------------------------------------------------- <<< -

let colors_name = "doom-flatwhite"
set background=light

if version > 580
 hi clear
 if exists("syntax_on")
  syntax reset
 endif
endif
if version > 800
 set termguicolors
endif

function! s:hi(group, fg, bg, gui)
 let l:res = "hi " . a:group
 if a:fg != ""
  let l:res = l:res . " guifg=" . a:fg
 endif
 if a:bg != ""
  let l:res = l:res . " guibg=" . a:bg
 endif
 if a:gui != ""
  let l:res = l:res . " gui=" . a:gui
  let l:res = l:res . " cterm=". a:gui
 endif
 execute l:res
    " for example:
    " call s:hi ("Comment",  s:base3,   s:base7,  "italic")
    " then
    " hi Comment guifg=s:base3 guibg=s:base7 cterm=italic gui=italic
endfunction

" --------------------------------------------------------------------------------------------- >>> -
" - palette ----------------------------------------------------------------------------------- <<< -

" base color gradually becomes light as number increases.
let s:base1                   = "#605a52"
let s:base2                   = "#93836c"
let s:base3                   = "#b9a992"
let s:base4                   = "#dcd3c6"
let s:base5                   = "#e4ddd2"
let s:base6                   = "#f1ece4"
let s:base7                   = "#f7f3ee"
let s:accent                  = "#6a4cff"
let s:orange_text             = "#5b5143"
let s:orange_text_sec         = "#957f5f"
let s:orange_bg               = "#f7e0c3"
let s:green_text              = "#525643"
let s:green_text_sec          = "#81895d"
let s:green_bg                = "#e2e9c1"
let s:teal_text               = "#465953"
let s:teal_text_sec           = "#5f8c7d"
let s:teal_bg                 = "#d2ebe3"
let s:blue_text               = "#4c5361"
let s:blue_text_sec           = "#7382a0"
let s:blue_bg                 = "#dde4f2"
let s:purple_text             = "#614c61"
let s:purple_text_sec         = "#9c739c"
let s:purple_bg               = "#f1ddf1"
let s:diff_add                = "#2db448"
let s:diff_change             = "#f2a60d"
let s:diff_change_dark        = "#795306"
let s:diff_delete             = "#ff1414"
let s:diff_renamed            = "#52aeff"
let s:white                   = "#ffffff"

let s:gitgutter_add           = s:diff_add
let s:gitgutter_change        = "#c75e00"
let s:gitgutter_delete        = s:diff_delete
let s:gitgutter_change_delete = s:gitgutter_change

" --------------------------------------------------------------------------------------------- >>> -
" - definitions ------------------------------------------------------------------------------- <<< -

call s:hi ("Comment",      s:base3,            s:base7,       "italic")
call s:hi ("Constant",     s:teal_text,        s:teal_bg,     "none")
call s:hi ("Cursor",       "",                 "",            "none")
call s:hi ("CursorLine",   "",                 s:base6,       "none")
call s:hi ("DiffAdd",      "",                 s:diff_add,    "none")
call s:hi ("DiffChange",   "",                 s:diff_change, "none")
call s:hi ("DiffDelete",   "",                 s:diff_delete, "none")
call s:hi ("FoldColumn",   s:base3,            s:base6,       "none")
call s:hi ("Ignore",       s:base4,            s:base7,       "none")
call s:hi ("MatchParen",   s:accent,           s:base7,       "underline")
call s:hi ("ModeMsg",      s:teal_text,        s:teal_bg,     "bold")
call s:hi ("Normal",       s:base1,            s:base7,       "none")
call s:hi ("Search",       "",                 s:base5,       "none")
call s:hi ("SpellBad",     s:white,            s:diff_delete, "none")
call s:hi ("SpellRare",    s:diff_change_dark, s:diff_change, "none")
call s:hi ("Statement",    s:purple_text,      s:purple_bg,   "none")
call s:hi ("StatusLine",   s:base7,            s:base1,       "bold")
call s:hi ("StatusLineNC", s:base1,            s:base3,       "none")
call s:hi ("String",       s:green_text,       s:green_bg,    "none")
call s:hi ("Type",         s:purple_text,      s:purple_bg,   "none")
call s:hi ("Underlined",   "",                 "",            "underline")
call s:hi ("Visual",       "",                 s:base5,       "none")
call s:hi ("NormalFloat",  "",                 s:white,       "none")

" LaTeX
call s:hi ("texBeginEndName", s:blue_text, s:blue_bg, "none")

" html
call s:hi ("htmlArg",            s:base2,       "",          "italic")
hi! link htmlHead Normal

" markdown
call s:hi ("markdownHeadingDelimiter",  s:purple_text, s:purple_bg, "none")
call s:hi ("markdownCodeBlock",         s:green_text,  s:green_bg,  "none")
call s:hi ("markdownLink",              s:blue_text,   s:blue_bg,   "none")
call s:hi ("markdownUrl",               s:blue_text,   s:blue_bg,   "none")
call s:hi ("markdownUrlTitle",          s:blue_text,   s:blue_bg,   "none")
call s:hi ("markdownLinkText",          s:blue_text,   s:blue_bg,   "none")
call s:hi ("markdownLinkTextDelimiter", s:blue_text,   s:blue_bg,   "none")
call s:hi ("markdownLinkDelimiter",     s:blue_text,   s:blue_bg,   "none")
call s:hi ("markdownId",                s:blue_text,   s:blue_bg,   "none")
call s:hi ("markdownUrlTitleDelimiter", s:blue_text,   s:blue_bg,   "none")
call s:hi ("markdownCodeDelimiter",     s:orange_text, s:orange_bg, "none")
call s:hi ("markdownCode",              s:orange_text, s:orange_bg, "none")
call s:hi ("markdownIdDeclaration",     s:blue_text,   s:blue_bg,   "none")
call s:hi ("markdownBlockquoteLine",    s:green_text,  s:green_bg,  "none")
call s:hi ("markdownBlockquote",        s:green_text,  s:green_bg,  "none")

" C
" TODO: paint struct/enum/union name orange
call s:hi ("cFormat",        s:green_text,  s:green_bg,  "none")
call s:hi ("cSpecial",       s:green_text,  s:green_bg,  "none")
call s:hi ("cType",          s:orange_text, s:orange_bg, "none")
hi! link cStorageClass Normal
hi! link cStructureName cType

" Python
" call s:hi ("pythonStatement",       s:purple_text, s:purple_bg, "none")
call s:hi ("pythonPredefinedValue", s:teal_text,   s:teal_bg,   "none")

" CSS
call s:hi ("cssTagName",        s:purple_text, s:purple_bg, "none")
call s:hi ("cssImportant",      s:orange_text, s:orange_bg, "none")
call s:hi ("cssAttr",           s:green_text,  s:green_bg,  "none")
call s:hi ("cssUnitDecorators", s:teal_text,   s:teal_bg,   "none")
call s:hi ("cssNumber",         s:blue_text,   s:blue_bg,   "none")
call s:hi ("cssColor",          s:green_text,  s:green_bg,  "none")
hi! link cssProp           Normal
hi! link cssUnitDecorators NONE
hi! link cssValueInteger   cssNumber
hi! link cssValueNumber    cssNumber
hi! link cssValueLength    cssNumber
hi! link cssValueAngle     cssNumber
hi! link cssValueTime      cssNumber
hi! link cssValueFrequency cssNumber

" gitgutter
call s:hi ("GitGutterAdd",          s:gitgutter_add,           s:base6, "none")
call s:hi ("GitGutterChange",       s:gitgutter_change,        s:base6, "none")
call s:hi ("GitGutterDelete",       s:gitgutter_delete,        s:base6, "none")
call s:hi ("GitGutterChangeDelete", s:gitgutter_change_delete, s:base6, "none")

" latex
call s:hi ("texCmdArgs", s:orange_text, s:orange_bg, "none")
call s:hi ("texBeginEndName", s:blue_text, s:blue_bg, "none")

hi! link Boolean        Constant
hi! link Character      String
hi! link ColorColumn    Statement
hi! link Conceal        Comment
hi! link Conditional    Statement
hi! link CursorColumn   CursorLine
hi! link CursorIM       Cursor
hi! link CursorLineNr   Normal
hi! link Debug          Special
hi! link Define         PreProc
hi! link Delimiter      Special
hi! link DiffText       Normal
hi! link Directory      Type
hi! link EndOfBuffer    Ignore
hi! link Error          DiffDelete
hi! link ErrorMsg       Error
hi! link Exception      Statement
hi! link Float          Constant
hi! link Folded         Normal
hi! link Function       Identifier
hi! link Identifier     Normal
hi! link IncSearch      Search
hi! link Include        PreProc
hi! link Keyword        Statement
hi! link Label          Statement
hi! link LineNr         FoldColumn
hi! link Macro          PreProc
hi! link MoreMsg        Visual
hi! link NonText        Ignore
hi! link Number         Constant
hi! link Operator       Normal
hi! link Pmenu          StatusLineNC
hi! link PmenuSbar      StatusLineNC
hi! link PmenuSel       StatusLine
hi! link PmenuThumb     StatusLine
hi! link PreCondit      PreProc
hi! link PreProc        Type
hi! link Question       ModeMsg
hi! link Repeat         Statement
hi! link Scrollbar      PmenuSbar
hi! link SignColumn     FoldColumn
hi! link Special        Normal
hi! link SpecialChar    Special
hi! link SpecialComment Special
hi! link SpecialKey     Special
hi! link SpellCap       SpellBad
hi! link SpellLocal     SpellRare
hi! link StorageClass   Type
hi! link Structure      Type
hi! link TabLine        StatusLineNC
hi! link TabLineFill    Search
hi! link TabLineSel     StatusLine
hi! link Tag            Special
hi! link Title          Statement
hi! link Todo           Type
hi! link Typedef        Type
hi! link Underlined     Normal
hi! link VertSplit      StatusLineNC
hi! link VisualNOS      Visual
hi! link WarningMsg     DiffChange
hi! link WildMenu       StatusLineNC

hi! WhichKeySeparator guifg=#cdc0af
hi! WhichKeyDesc guifg=#aa9e97
hi! WhichKeyValue guifg=#aa9e97
hi! WhichKeyFloat guibg=#f0ede4
hi! WhichKeyGroup guifg=#c89fca

hi! DashboardHeader guifg = #b9a992
hi! DashboardCenter guifg = #9c739c 
hi! DashboardShortcut guifg =#81895d
hi! DashboardFooter guifg = #b9a992 

hi! LSPDiagnosticsWarning guifg=#ebcb8b ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! LspDiagnosticsDefaultError guifg=#bf616a ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! LspDiagnosticsInformation guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! LspDiagnosticsHint guifg=#5e81ac ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! LspDiagnosticsUnderlineWarning guifg=#ebcb8b ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! LspDiagnosticsUnderlineError guifg=#bf616a ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! LspDiagnosticsUnderlineInformation guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! LspDiagnosticsUnderlineHint guifg=#5e81ac ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" --------------------------------------------------------------------------------------------- >>> -


" vim: foldmarker=<<<,>>>

