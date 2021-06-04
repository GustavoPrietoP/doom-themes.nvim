" Maintainer: Nitish Velu <nitishvelu@gmail.com>

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name='doom-dracula'

hi Normal guifg=#f8f8f2 ctermfg=255 guibg=#1f2129 ctermbg=236 gui=NONE cterm=NONE
hi Comment guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi Constant guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#ffb86c ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#ffb86c ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Repeat guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Label guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Include guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Define guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Title guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Macro guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreCondit guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi StorageClass guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Structure guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Typedef guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi SpecialComment guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Error guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi Todo guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=bold,italic cterm=bold,italic
hi Underlined guifg=#8be9fd ctermfg=117 gui=underline cterm=underline
hi Cursor guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi SignColumn guifg=NONE ctermfg=NONE guibg=#1f2129 ctermbg=236 gui=NONE cterm=NONE
hi Conceal guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi Directory guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#1e1e1e ctermfg=234 guibg=#50fa7b ctermbg=84 gui=NONE cterm=NONE
hi DiffChange guifg=#ffb86c ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffDelete guifg=#ff5555 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffText guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi ErrorMsg guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#181a1f ctermfg=234 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Folded guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi IncSearch guifg=#f1fa8c ctermfg=228 guibg=#6272a4 ctermbg=61 gui=NONE cterm=NONE
hi LineNr guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guifg=#f8f8f2 ctermfg=255 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi NonText guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Pmenu guifg=#abb2bf ctermfg=249 guibg=#282c34 ctermbg=236 gui=NONE cterm=NONE
hi PmenuSel guifg=#1e1e1e ctermfg=234 guibg=#8be9fd ctermbg=117 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE ctermfg=NONE guibg=#3b4048 ctermbg=238 gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE ctermfg=NONE guibg=#abb2bf ctermbg=249 gui=NONE cterm=NONE
hi Question guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi QuickFixLine guifg=#1e1e1e ctermfg=234 guibg=#f1fa8c ctermbg=228 gui=NONE cterm=NONE
hi Search guifg=#1e1e1e ctermfg=234 guibg=#f1fa8c ctermbg=228 gui=NONE cterm=NONE
hi SpecialKey guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellCap guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#abb2bf ctermfg=249 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi StatusLineNC guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLineTerm guifg=#abb2bf ctermfg=249 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi StatusLineTermNC guifg=#2c323c ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLine guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#1f2129 ctermbg=236 gui=NONE cterm=NONE
hi Terminal guifg=#abb2bf ctermfg=249 guibg=#1e1e1e ctermbg=234 gui=NONE cterm=NONE
hi Visual guifg=NONE ctermfg=NONE guibg=#3e4452 ctermbg=238 gui=NONE cterm=NONE
hi VisualNOS guifg=#3e4452 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#1e1e1e ctermfg=234 guibg=#8be9fd ctermbg=117 gui=NONE cterm=NONE
hi EndOfBuffer guifg=#1e1e1e ctermfg=234 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSError guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctDelimiter guifg=#f8f8f2 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctBracket guifg=#f8f8f2 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSPunctSpecial guifg=#f8f8f2 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstant guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstBuiltin guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstMacro guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStringRegex guifg=#ff5555 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSString guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStringEscape guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSCharacter guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSNumber guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSBoolean guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFloat guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSAnnotation guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSAttribute guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSNamespace guifg=#ff00ff ctermfg=201 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFuncBuiltin guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFunction guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSFuncMacro guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSParameter guifg=#ffb86c ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSParameterReference guifg=#ffb86c ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSMethod guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSField guifg=#ffb86c ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSProperty guifg=#f8f8f2 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConstructor guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSConditional guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSRepeat guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSLabel guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeyword guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordFunction guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSKeywordOperator guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSOperator guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSException guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSType guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTypeBuiltin guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi TSStructure guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSInclude guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSVariable guifg=#f8f8f2 ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSVariableBuiltin guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSText guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSStrong guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSEmphasis guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSUnderline guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTitle guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSLiteral guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSURI guifg=#ffff00 ctermfg=226 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTag guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi TSTagDelimiter guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlArg guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlBold guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi htmlEndTag guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH1 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH2 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH3 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH4 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH5 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlH6 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlItalic guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi htmlLink guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi htmlSpecialChar guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlSpecialTagName guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTag guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagN guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagName guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTitle guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi markdownBold guifg=#ffb86c ctermfg=215 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownCode guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeBlock guifg=#ffb86c ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=#ff5555 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH1 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownH2 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownH3 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownH4 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownH5 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownH6 guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi markdownHeadingDelimiter guifg=#ff5555 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownHeadingRule guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownId guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDeclaration guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDelimiter guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownItalic guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi markdownLinkDelimiter guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownListMarker guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownOrderedListMarker guifg=#ff5555 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownRule guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi CocExplorerIndentLine guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferRoot guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileRoot guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferFullPath guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileFullPath guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferReadonly guifg=#ff5555 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferModified guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerBufferNameVisible guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileReadonly guifg=#ff5555 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileModified guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerFileHidden guifg=#6272a4 ctermfg=61 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi CocExplorerHelpLine guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi EasyMotionTarget guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionTarget2First guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionTarget2Second guifg=#f44747 ctermfg=203 guibg=NONE ctermbg=NONE gui=bold cterm=bold
hi EasyMotionShade guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyNumber guifg=#ffb86c ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySelect guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyBracket guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySpecial guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyVar guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyPath guifg=#8be9fd ctermfg=117 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFile guifg=#ff5555 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySlash guifg=#ff79c6 ctermfg=212 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyHeader guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifySection guifg=#bd93f9 ctermfg=141 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StartifyFooter guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WhichKey guifg=#50fa7b
hi diffAdded guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=#ff5555 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffFileId guifg=#f1fa8c ctermfg=228 guibg=NONE ctermbg=NONE gui=bold,reverse cterm=bold,reverse
hi diffFile guifg=#3b4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffNewFile guifg=#50fa7b ctermfg=84 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffOldFile guifg=#ff5555 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi debugPc guifg=NONE ctermfg=NONE guibg=#8be9fd ctermbg=117 gui=NONE cterm=NONE
hi debugBreakpoint guifg=#ff5555 ctermfg=203 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse

"hi LSPDiagnosticsWarning guifg=#ebcb8b ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"hi LspDiagnosticsDefaultError guifg=#bf616a ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"hi LspDiagnosticsInformation guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"hi LspDiagnosticsHint guifg=#5e81ac ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"hi LspDiagnosticsUnderlineWarning guifg=#ebcb8b ctermfg=222 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"hi LspDiagnosticsUnderlineError guifg=#bf616a ctermfg=131 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"hi LspDiagnosticsUnderlineInformation guifg=#88c0d0 ctermfg=110 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"hi LspDiagnosticsUnderlineHint guifg=#5e81ac ctermfg=67 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

hi WhichKeySeparator guifg=#565761
hi WhichKeyDesc guifg=#539ed2
hi WhichKeyValue guifg=#539ed2
hi WhichKeyFloat guibg=#1f2129
hi WhichKeyGroup guifg=#C5A3FF

hi DashboardHeader guifg = #6272a4
hi DashboardCenter guifg = #ff79c6
hi DashboardShortcut guifg = #8be9fd
hi DashboardFooter guifg = #6272a4

hi NvimTreeRootFolder guifg = #BD93F9
hi NvimTreeFolderIcon guifg = #BD93F9
hi NvimTreeEmptyFolderName guifg = #6272A4
hi NvimTreeSpecialFile guifg = #FF79C6



lua << EOF
local colors = {
	bg = "#282A36",
	fg = "#F8F8F2",
	selection = "#44475A",
	comment = "#6272A4",
	red = "#FF5555",
	orange = "#FFB86C",
	yellow = "#F1FA8C",
	green = "#50fa7b",
	purple = "#BD93F9",
	cyan = "#8BE9FD",
	pink = "#FF79C6",
	bright_red = "#FF6E6E",
	bright_green = "#69FF94",
	bright_yellow = "#FFFFA5",
	bright_blue = "#D6ACFF",
	bright_magenta = "#FF92DF",
	bright_cyan = "#A4FFFF",
	bright_white = "#FFFFFF",
	menu = "#21222C",
	visual = "#3E4452",
	gutter_fg = "#4B5263",
	nontext = "#3B4048",
	white = "#ABB2BF",
	black = "#191A21"
}

local highlight = function(group, fg, bg, attr, sp)
    fg = fg and "guifg=" .. fg or "guifg=NONE"
    bg = bg and "guibg=" .. bg or "guibg=NONE"
    attr = attr and "gui=" ..attr or "gui=NONE"
	sp = sp and "guisp=" .. sp or ""

    vim.api.nvim_command("highlight " .. group .. " ".. fg .. " " .. bg .. " ".. attr .. " " .. sp)
end

highlight("NvimTreeRootFolder", colors.purple, nil, 'bold', nil)
highlight("NvimTreeNormal ", colors.bright_blue, nil, nil, nil)
highlight("NvimTreeGitDirty", colors.yellow, nil, nil, nil)
highlight("NvimTreeGitNew", colors.bright_green, nil, nil, nil)
highlight("NvimTreeImageFile", colors.pink, nil, nil, nil)
highlight("NvimTreeFolderIcon", colors.purple, nil, nil, nil)
highlight("NvimTreeIndentMarker", colors.nontext, nil, nil, nil)
highlight("NvimTreeEmptyFolderName", colors.comment, nil, nil, nil)
highlight("NvimTreeFolderName", colors.bright_blue, nil, nil, nil)
highlight("NvimTreeSpecialFile", colors.pink, nil, 'underline', nil)

highlight('LspDiagnosticsDefaultError', colors.red, nil, nil, nil)
highlight('LspDiagnosticsDefaultWarning', colors.yellow, nil, nil, nil)
highlight('LspDiagnosticsDefaultInformation', colors.cyan, nil, nil, nil)
highlight('LspDiagnosticsDefaultHint', colors.cyan, nil, nil, nil)
highlight('LspDiagnosticsUnderlineError', colors.red, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineWarning', colors.yellow, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineInformation', colors.cyan, nil, 'undercurl', nil)
highlight('LspDiagnosticsUnderlineHint', colors.cyan, nil, 'undercurl', nil)
highlight('LspReferenceText', colors.orange, nil, nil, nil)
highlight('LspReferenceRead', colors.orange, nil, nil, nil)
highlight('LspReferenceWrite', colors.orange, nil, nil, nil)

highlight("BufferLineIndicatorSelected", colors.purple , nil, nil, nil)
highlight("BufferLineFill", nil , colors.black, nil, nil)

-- HTML
highlight("htmlArg", colors.yellow, nil, nil, nil)
highlight("htmlBold", colors.yellow, nil, "bold", nil)
highlight("htmlEndTag", colors.white, nil, nil, nil)
highlight("htmlH1", colors.pink, nil, nil, nil)
highlight("htmlH2", colors.pink, nil, nil, nil)
highlight("htmlH3", colors.pink, nil, nil, nil)
highlight("htmlH4", colors.pink, nil, nil, nil)
highlight("htmlH5", colors.pink, nil, nil, nil)
highlight("htmlH6", colors.pink, nil, nil, nil)
highlight("htmlItalic", colors.purple, nil, "italic", nil)
highlight("htmlLink", colors.purple, nil, "underline", nil)
highlight("htmlSpecialChar", colors.yellow, nil, nil, nil)
highlight("htmlSpecialTagName", colors.cyan, nil, nil, nil)
highlight("htmlTag", colors.pink, nil, nil, nil)
highlight("htmlTagN", colors.pink, nil, nil, nil)
highlight("htmlTagName", colors.cyan, nil, nil, nil)
highlight("htmlTitle", colors.white, nil, nil, nil)


-- Markdown
highlight("markdownBlockquote", colors.yellow, nil, "italic", nil)
highlight("markdownBold", colors.orange, nil, "bold", nil)
highlight("markdownCode", colors.green, nil, nil, nil)
highlight("markdownCodeBlock", colors.orange, nil, nil, nil)
highlight("markdownCodeDelimiter", colors.red, nil, nil, nil)
highlight("markdownH1", colors.pink, nil, "bold", nil)
highlight("markdownH2", colors.pink, nil, "bold", nil)
highlight("markdownH3", colors.pink, nil, "bold", nil)
highlight("markdownH4", colors.pink, nil, "bold", nil)
highlight("markdownH5", colors.pink, nil, "bold", nil)
highlight("markdownH6", colors.pink, nil, "bold", nil)
highlight("markdownHeadingDelimiter", colors.red, nil, nil, nil)
highlight("markdownHeadingRule", colors.comment, nil, nil, nil)
highlight("markdownId", colors.purple, nil, nil, nil)
highlight("markdownIdDeclaration", colors.cyan, nil, nil, nil)
highlight("markdownIdDelimiter", colors.purple, nil, nil, nil)
highlight("markdownItalic", colors.yellow, nil, "italic", nil)
highlight("markdownLinkDelimiter", colors.purple, nil, nil, nil)
highlight("markdownLinkText", colors.pink, nil, nil, nil)
highlight("markdownListMarker", colors.cyan, nil, nil, nil)
highlight("markdownOrderedListMarker", colors.red, nil, nil, nil)
highlight("markdownRule", colors.comment, nil, nil, nil)

highlight("diffAdded", colors.green, nil, nil, nil)
highlight("diffRemoved", colors.red, nil, nil, nil)
highlight("diffFileId", colors.yellow, nil, "bold,reverse", nil)
highlight("diffFile", colors.nontext, nil, nil, nil)
highlight("diffNewFile", colors.green, nil, nil, nil)
highlight("diffOldFile", colors.red, nil, nil, nil)

highlight("debugPc", nil, colors.cyan, nil, nil)
highlight("debugBreakpoint", colors.red, nil, "reverse", nil)

highlight('GitSignsAdd', colors.bright_green, nil, nil, nil)
highlight('GitSignsChange', colors.cyan, nil, nil, nil)
highlight('GitSignsDelete', colors.bright_red, nil, nil, nil)
highlight('GitSignsAddLn', colors.black, colors.bright_green, nil, nil)
highlight('GitSignsChangeLn', colors.black, colors.cyan, nil, nil)
highlight('GitSignsDeleteLn', colors.black, colors.bright_red, nil, nil)

EOF
