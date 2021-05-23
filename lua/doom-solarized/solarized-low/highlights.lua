local M = {}
local cmd = vim.cmd
local g = vim.g
local o = vim.o
local fn = vim.fn
local utils = require('doom-solarized.utils')
local colors

if o.bg == 'dark' then
	colors = require('doom-solarized.solarized-low.solarized-dark').setup()
else
	colors = require('doom-solarized.solarized-low.solarized-light').setup()
end

cmd('hi clear')

utils.default_settings()

if fn.exists("syntax_on") then
	cmd('syntax reset')
end

g.colors_name = 'doom-solarized-low'

function M.load_syntax()
	local syntax = {}

	syntax['Normal'] = {fg=colors.base0,bg=utils.termtrans(colors.base02)}
	syntax['FoldColumn'] = {fg=colors.base0,bg=utils.termtrans(colors.base02)}
	syntax['Folded'] = {fg=colors.base0,bg=utils.termtrans(colors.base02),guisp=colors.base03,style='bold'}
	syntax['LineNr'] = {fg=colors.base01,bg=utils.termtrans(colors.base02)}
	syntax['Terminal'] = syntax['Normal']
	syntax['ToolbarButton'] = {fg=colors.base1,bg=utils.termtrans(colors.base02),style='bold'}
	syntax['ToolbarLine'] = {fg=colors.none,bg=utils.termtrans(colors.base02)}

	if g.solarized_visibility == 'high' then
		syntax['CursorLineNr'] = {fg=colors.orange,bg=colors.base02,style='bold'}
		syntax['NonText'] = {fg=colors.orange,style='bold'}
		syntax['SpecialKey'] = {fg=colors.orange,style='reverse'}
		syntax['SpellBad'] = {fg=colors.violet,bg=colors.base2,guisp=colors.red,style='reverse,undercurl'}
		syntax['SpellCap'] = {fg=colors.violet,bg=colors.base2,guisp=colors.red,style='reverse,undercurl'}
		syntax['SpellLocal'] = {fg=colors.yellow,bg=colors.base2,guisp=colors.red,style='reverse,undercurl'}
		syntax['SpellRare'] = {fg=colors.cyan,bg=colors.base2,guisp=colors.red,style='reverse,undercurl'}
		syntax['Title'] = {fg=colors.yellow,style='bold'}
	elseif g.solarized_visibility == 'low' then
		syntax['CursorLineNr'] = {fg=colors.base01,bg=colors.base02,style='bold'}
		syntax['NonText'] = {fg=colors.base02,style='bold'}
		syntax['SpecialKey'] = {fg=colors.base02,style='reverse'}
		syntax['SpellBad'] = {fg=colors.violet,guisp=colors.violet,style='undercurl'}
		syntax['SpellCap'] = {fg=colors.violet,guisp=colors.violet,style='undercurl'}
		syntax['SpellLocal'] = {fg=colors.yellow,guisp=colors.yellow,style='undercurl'}
		syntax['SpellRare'] = {fg=colors.cyan,guisp=colors.cyan,style='undercurl'}
		syntax['Title'] = {fg=colors.base01,style='bold'}
	else
		syntax['CursorLineNr'] = {fg=colors.base0,bg=colors.base02,style='bold'}
		syntax['NonText'] = {fg=colors.base00,style='bold'}
		syntax['SpecialKey'] = {fg=colors.base00,bg=colors.base02,style='bold'}
		syntax['SpellBad'] = {fg=colors.violet,guisp=colors.violet,style='undercurl'}
		syntax['SpellCap'] = {fg=colors.violet,guisp=colors.violet,style='undercurl'}
		syntax['SpellLocal'] = {fg=colors.yellow,guisp=colors.yellow,style='undercurl'}
		syntax['SpellRare'] = {fg=colors.cyan,guisp=colors.cyan,style='undercurl'}
		syntax['Title'] = {fg=colors.orange,style='bold'}
	end


	if g.solarized_diffmode == 'high' then
		syntax['DiffAdd'] = {fg=colors.green,style='reverse'}
		syntax['DiffChange'] = {fg=colors.yellow,style='reverse'}
		syntax['DiffDelete'] = {fg=colors.red,style='reverse'}
		syntax['DiffText'] = {fg=colors.blue,style='reverse'}
	elseif g.solarized_diffmode == 'low' then
		syntax['DiffAdd'] = {fg=colors.green,guisp=colors.green}
		syntax['DiffChange'] = {fg=colors.yellow,guisp=colors.yellow}
		syntax['DiffDelete'] = {fg=colors.red,style='bold'}
		syntax['DiffText'] = {fg=colors.blue,guisp=colors.blue}
	else
		syntax['DiffAdd'] = {fg=colors.green,bg=colors.base2,guisp=colors.green}
		syntax['DiffChange'] = {fg=colors.yellow,bg=colors.base2,guisp=colors.yellow}
		syntax['DiffDelete'] = {fg=colors.red,bg=colors.base2,style='bold'}
		syntax['DiffText'] = {fg=colors.blue,bg=colors.base2,guisp=colors.blue}
	end

	if g.solarized_statusline == 'low' then
		syntax['StatusLine'] = {fg=colors.base1,bg=colors.base2,style='reverse'}
		syntax['StatusLineNC'] = {fg=colors.base1,bg=colors.base01,style='reverse'}
		syntax['TabLine'] = {fg=colors.base1,bg=colors.base01,style='reverse'}
		syntax['TabLineFill'] = {fg=colors.base1,bg=colors.base01,style='reverse'}
		syntax['TabLineSel'] = {fg=colors.base1,bg=colors.base2,style='reverse'}
		syntax['VertSplit'] = {fg=colors.base1}
		syntax['WildMenu'] = {fg=colors.base00,bg=colors.base2,style='reverse'}
	elseif g.solarized_statusline == 'flat' then
		syntax['StatusLine'] = {fg=colors.base3,bg=colors.base02,style='reverse'}
		syntax['StatusLineNC'] = {fg=colors.base3,bg=colors.base01,style='reverse'}
		syntax['TabLineSel'] = {fg=colors.base02,bg=colors.base3}
		syntax['TabLine'] = {fg=colors.base1,bg=colors.base3}
		syntax['TabLineFill'] = {fg=colors.base1,bg=colors.base3}
		syntax['VertSplit'] = {fg=colors.base3}
		syntax['WildMenu'] = {fg=colors.base1,bg=colors.base3,style='reverse'}
	else
		syntax['StatusLine'] = {fg=colors.base01,bg=colors.base2,style='reverse'}
		syntax['StatusLineNC'] = {fg=colors.base0,bg=colors.base2,style='reverse'}
		syntax['TabLine'] = {fg=colors.base0,bg=colors.base2,style='reverse'}
		syntax['TabLineFill'] = {fg=colors.base0,bg=colors.base2,style='reverse'}
		syntax['TabLineSel'] = {fg=colors.base01,bg=colors.base2,style='reverse'}
		syntax['VertSplit'] = {fg=colors.base1}
		syntax['WildMenu'] = {fg=colors.base0,bg=colors.base2,style='reverse'}
	end

	syntax['ColorColumn'] = {fg=colors.base2,bg=colors.base1}
	syntax['Conceal'] = {fg=colors.blue}
	syntax['CursorColumn'] = {fg=colors.base2,bg=colors.base1}
	syntax['CursorLine'] = {fg=colors.none,guisp=colors.base0,style='underline',ctermfg=colors.none,ctermbg=colors.none}
	syntax['Directory'] = {fg=colors.blue}
	syntax['EndOfBuffer'] = {fg=colors.none,ctermfg=colors.none,ctermbg=colors.none}
	syntax['ErrorMsg'] = {fg=colors.red,bg=colors.base3,style='reverse'}
	syntax['IncSearch'] = {fg=colors.orange,style='standout'}
	syntax['ModeMsg'] = {fg=colors.blue}
	syntax['MoreMsg'] = {fg=colors.blue}
	syntax['Pmenu'] = {fg=colors.base3,bg=colors.base1}
	syntax['PmenuSbar'] = {fg=colors.none,bg=colors.base00}
	syntax['PmenuSel'] = {fg=colors.base3,bg=colors.base0}
	syntax['PmenuThumb'] = {fg=colors.none,bg=colors.base0}
	syntax['Question'] = {fg=colors.cyan,style='bold'}
	syntax['Search'] = {fg=colors.yellow,style='reverse'}
	syntax['SignColumn'] = {fg=colors.base00}
	syntax['Visual'] = {fg=colors.base1,bg=colors.base3,style='reverse'}
	syntax['VisualNOS'] = {fg=colors.none,bg=colors.base2,style='reverse'}
	syntax['WarningMsg'] = {fg=colors.orange,style='bold'}
	syntax['Comment'] = {fg=colors.base1,style=utils.italics()}
	syntax['Constant'] = {fg=colors.cyan}
	syntax['CursorIM'] = {fg=colors.none,bg=colors.base0}
	syntax['Error'] = {fg=colors.red,bg=colors.base3,style='bold,reverse'}
	syntax['Identifier'] = {fg=colors.blue}
	syntax['Ignore'] = {fg=colors.none,ctermfg=colors.none,ctermbg=colors.none}
	syntax['PreProc'] = {fg=colors.orange}
	syntax['Special'] = {fg=colors.orange}
	syntax['Statement'] = {fg=colors.green}
	syntax['Todo'] = {fg=colors.magenta,style='bold'}
	syntax['Type'] = {fg=colors.yellow}
	syntax['Underlined'] = {fg=colors.violet}
	syntax['NormalMode'] = {fg=colors.base01,bg=colors.base3,style='reverse'}
	syntax['InsertMode'] = {fg=colors.cyan,bg=colors.base3,style='reverse'}
	syntax['ReplaceMode'] = {fg=colors.orange,bg=colors.base3,style='reverse'}
	syntax['VisualMode'] = {fg=colors.magenta,bg=colors.base3,style='reverse'}
	syntax['CommandMode'] = {fg=colors.magenta,bg=colors.base3,style='reverse'}
	syntax['vimCommentString'] = {fg=colors.violet}
	syntax['vimCommand'] = {fg=colors.yellow}
	syntax['vimCmdSep'] = {fg=colors.blue,style='bold'}
	syntax['helpExample'] = {fg=colors.base01}
	syntax['helpOption'] = {fg=colors.cyan}
	syntax['helpNote'] = {fg=colors.magenta}
	syntax['helpVim'] = {fg=colors.magenta}
	syntax['helpHyperTextJump'] = {fg=colors.blue}
	syntax['helpHyperTextEntry'] = {fg=colors.green}
	syntax['vimIsCommand'] = {fg=colors.base0}
	syntax['vimSynMtchOpt'] = {fg=colors.yellow}
	syntax['vimSynType'] = {fg=colors.cyan}
	syntax['vimHiLink'] = {fg=colors.blue}
	syntax['vimHiGroup'] = {fg=colors.blue}
	syntax['vimGroup'] = {fg=colors.blue,style='bold'}
	syntax['gitcommitComment'] = {fg=colors.base1,style=utils.italics()}
	syntax['gitcommitUnmerged'] = {fg=colors.green,style='bold'}
	syntax['gitcommitOnBranch'] = {fg=colors.base01,style='bold'}
	syntax['gitcommitBranch'] = {fg=colors.magenta,style='bold'}
	syntax['gitcommitdiscardedtype'] = {fg=colors.red}
	syntax['gitcommitselectedtype'] = {fg=colors.green}
	syntax['gitcommitHeader'] = {fg=colors.base01}
	syntax['gitcommitUntrackedFile'] = {fg=colors.cyan,style='bold'}
	syntax['gitcommitDiscardedFile'] = {fg=colors.red,style='bold'}
	syntax['gitcommitSelectedFile'] = {fg=colors.green,style='bold'}
	syntax['gitcommitUnmergedFile'] = {fg=colors.yellow,style='bold'}
	syntax['gitcommitFile'] = {fg=colors.base0,style='bold'}
	syntax['htmlTag'] = {fg=colors.base01}
	syntax['htmlEndTag'] = {fg=colors.base01}
	syntax['htmlTagN'] = {fg=colors.base1,style='bold'}
	syntax['htmlTagName'] = {fg=colors.blue,style='bold'}
	syntax['htmlSpecialTagName'] = {fg=colors.blue,style=utils.italics()}
	syntax['htmlArg'] = {fg=colors.base00}
	syntax['javaScript'] = {fg=colors.yellow}
	syntax['perlHereDoc'] = {fg=colors.base1}
	syntax['perlVarPlain'] = {fg=colors.yellow}
	syntax['perlStatementFileDesc'] = {fg=colors.cyan}
	syntax['texstatement'] = {fg=colors.cyan}
	syntax['texmathzonex'] = {fg=colors.yellow}
	syntax['texmathmatcher'] = {fg=colors.yellow}
	syntax['texreflabel'] = {fg=colors.yellow}
	syntax['rubyDefine'] = {fg=colors.base1,style='bold'}
	syntax['rubyBoolean'] = {fg=colors.magenta}
	syntax['cPreCondit'] = {fg=colors.orange}
	syntax['VarId'] = {fg=colors.blue}
	syntax['ConId'] = {fg=colors.yellow}
	syntax['hsImport'] = {fg=colors.magenta}
	syntax['hsString'] = {fg=colors.base00}
	syntax['hsStructure'] = {fg=colors.cyan}
	syntax['hs_hlFunctionName'] = {fg=colors.blue}
	syntax['hsStatement'] = {fg=colors.cyan}
	syntax['hsImportLabel'] = {fg=colors.cyan}
	syntax['hs_OpFunctionName'] = {fg=colors.yellow}
	syntax['hs_DeclareFunction'] = {fg=colors.orange}
	syntax['hsVarSym'] = {fg=colors.cyan}
	syntax['hsType'] = {fg=colors.yellow}
	syntax['hsTypedef'] = {fg=colors.cyan}
	syntax['hsModuleName'] = {fg=colors.green}
	syntax['hsNiceOperator'] = {fg=colors.cyan}
	syntax['hsniceoperator'] = {fg=colors.cyan}
	syntax['pandocTitleBlock'] = {fg=colors.blue}
	syntax['pandocTitleBlockTitle'] = {fg=colors.blue,style='bold'}
	syntax['pandocTitleComment'] = {fg=colors.blue,style='bold'}
	syntax['pandocComment'] = {fg=colors.base01,style=utils.italics()}
	syntax['pandocVerbatimBlock'] = {fg=colors.yellow}
	syntax['pandocBlockQuote'] = {fg=colors.blue}
	syntax['pandocBlockQuoteLeader1'] = {fg=colors.blue}
	syntax['pandocBlockQuoteLeader2'] = {fg=colors.cyan}
	syntax['pandocBlockQuoteLeader3'] = {fg=colors.yellow}
	syntax['pandocBlockQuoteLeader4'] = {fg=colors.red}
	syntax['pandocBlockQuoteLeader5'] = {fg=colors.base0}
	syntax['pandocBlockQuoteLeader6'] = {fg=colors.base01}
	syntax['pandocListMarker'] = {fg=colors.magenta}
	syntax['pandocListReference'] = {fg=colors.magenta}
	syntax['pandocDefinitionBlock'] = {fg=colors.violet}
	syntax['pandocDefinitionTerm'] = {fg=colors.violet,style='standout'}
	syntax['pandocDefinitionIndctr'] = {fg=colors.violet,style='bold'}
	syntax['pandocEmphasisDefinition'] = {fg=colors.violet,style=utils.italics()}
	syntax['pandocEmphasisNestedDefinition'] = {fg=colors.violet,style='bold'}
	syntax['pandocStrongEmphasisDefinition'] = {fg=colors.violet,style='bold'}
	syntax['pandocStrongEmphasisNestedDefinition'] = {fg=colors.violet,style='bold'}
	syntax['pandocStrongEmphasisEmphasisDefinition'] = {fg=colors.violet,style='bold'}
	syntax['pandocStrikeoutDefinition'] = {fg=colors.violet,style='reverse'}
	syntax['pandocVerbatimInlineDefinition'] = {fg=colors.violet}
	syntax['pandocSuperscriptDefinition'] = {fg=colors.violet}
	syntax['pandocSubscriptDefinition'] = {fg=colors.violet}
	syntax['pandocTable'] = {fg=colors.blue}
	syntax['pandocTableStructure'] = {fg=colors.blue}
	syntax['pandocTableZebraLight'] = {fg=colors.blue,bg=colors.base03}
	syntax['pandocTableZebraDark'] = {fg=colors.blue,bg=colors.base02}
	syntax['pandocEmphasisTable'] = {fg=colors.blue,style=utils.italics()}
	syntax['pandocEmphasisNestedTable'] = {fg=colors.blue,style='bold'}
	syntax['pandocStrongEmphasisTable'] = {fg=colors.blue,style='bold'}
	syntax['pandocStrongEmphasisNestedTable'] = {fg=colors.blue,style='bold'}
	syntax['pandocStrongEmphasisEmphasisTable'] = {fg=colors.blue,style='bold'}
	syntax['pandocStrikeoutTable'] = {fg=colors.blue,style='reverse'}
	syntax['pandocVerbatimInlineTable'] = {fg=colors.blue}
	syntax['pandocSuperscriptTable'] = {fg=colors.blue}
	syntax['pandocSubscriptTable'] = {fg=colors.blue}
	syntax['pandocHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocHeadingMarker'] = {fg=colors.orange,style='bold'}
	syntax['pandocEmphasisHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocEmphasisNestedHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocStrongEmphasisHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocStrongEmphasisNestedHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocStrongEmphasisEmphasisHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocStrikeoutHeading'] = {fg=colors.orange,style='reverse'}
	syntax['pandocVerbatimInlineHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocSuperscriptHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocSubscriptHeading'] = {fg=colors.orange,style='bold'}
	syntax['pandocLinkDelim'] = {fg=colors.base01}
	syntax['pandocLinkLabel'] = {fg=colors.blue}
	syntax['pandocLinkText'] = {fg=colors.blue}
	syntax['pandocLinkURL'] = {fg=colors.base00}
	syntax['pandocLinkTitle'] = {fg=colors.base00}
	syntax['pandocLinkTitleDelim'] = {fg=colors.base01,guisp=colors.base00}
	syntax['pandocLinkDefinition'] = {fg=colors.cyan,guisp=colors.base00}
	syntax['pandocLinkDefinitionID'] = {fg=colors.blue,style='bold'}
	syntax['pandocImageCaption'] = {fg=colors.violet,style='bold'}
	syntax['pandocFootnoteLink'] = {fg=colors.green}
	syntax['pandocFootnoteDefLink'] = {fg=colors.green,style='bold'}
	syntax['pandocFootnoteInline'] = {fg=colors.green,style='bold'}
	syntax['pandocFootnote'] = {fg=colors.green}
	syntax['pandocCitationDelim'] = {fg=colors.magenta}
	syntax['pandocCitation'] = {fg=colors.magenta}
	syntax['pandocCitationID'] = {fg=colors.magenta}
	syntax['pandocCitationRef'] = {fg=colors.magenta}
	syntax['pandocStyleDelim'] = {fg=colors.base01}
	syntax['pandocEmphasis'] = {fg=colors.base0,style=utils.italics()}
	syntax['pandocEmphasisNested'] = {fg=colors.base0,style='bold'}
	syntax['pandocStrongEmphasis'] = {fg=colors.base0,style='bold'}
	syntax['pandocStrongEmphasisNested'] = {fg=colors.base0,style='bold'}
	syntax['pandocStrongEmphasisEmphasis'] = {fg=colors.base0,style='bold'}
	syntax['pandocStrikeout'] = {fg=colors.base01,style='reverse'}
	syntax['pandocVerbatimInline'] = {fg=colors.yellow}
	syntax['pandocSuperscript'] = {fg=colors.violet}
	syntax['pandocSubscript'] = {fg=colors.violet}
	syntax['pandocRule'] = {fg=colors.blue,style='bold'}
	syntax['pandocRuleLine'] = {fg=colors.blue,style='bold'}
	syntax['pandocEscapePair'] = {fg=colors.red,style='bold'}
	syntax['pandocCitationRef'] = {fg=colors.magenta}
	syntax['pandocNonBreakingSpace'] = {fg=colors.red,style='reverse'}
	syntax['pandocMetadataDelim'] = {fg=colors.base01}
	syntax['pandocMetadata'] = {fg=colors.blue}
	syntax['pandocMetadataKey'] = {fg=colors.blue}
	syntax['pandocMetadata'] = {fg=colors.blue,style='bold'}


	syntax['Boolean'] = syntax['Constant']
	syntax['Character'] = syntax['Constant']
	syntax['Conditional'] = syntax['Statement']
	syntax['Debug'] = syntax['Special']
	syntax['Define'] = syntax['PreProc']
	syntax['Delimiter'] = syntax['Special']
	syntax['Exception'] = syntax['Statement']
	syntax['Float'] = syntax['Constant']
	syntax['FloatBorder'] = syntax['VertSplit']
	syntax['Function'] = syntax['Identifier']
	syntax['Include'] = syntax['PreProc']
	syntax['Keyword'] = syntax['Statement']
	syntax['Label'] = syntax['Statement']
	syntax['Macro'] = syntax['PreProc']
	syntax['Number'] = syntax['Constant']
	syntax['Operator'] = syntax['Statement']
	syntax['PreCondit'] = syntax['PreProc']
	syntax['QuickFixLine'] = syntax['Search']
	syntax['Repeat'] = syntax['Statement']
	syntax['SpecialChar'] = syntax['Special']
	syntax['SpecialComment'] = syntax['Special']
	syntax['StatusLineTerm'] = syntax['StatusLine']
	syntax['StatusLineTermNC'] = syntax['StatusLineNC']
	syntax['StorageClass'] = syntax['Type']
	syntax['String'] = syntax['Constant']
	syntax['Structure'] = syntax['Type']
	syntax['Tag'] = syntax['Special']
	syntax['Typedef'] = syntax['Type']
	syntax['lCursor'] = syntax['Cursor']
	syntax['vimVar'] = syntax['Identifier']
	syntax['vimFunc'] = syntax['Function']
	syntax['vimUserFunc'] = syntax['Function']
	syntax['helpSpecial'] = syntax['Special']
	syntax['vimSet'] = syntax['Normal']
	syntax['vimSetEqual'] = syntax['Normal']
	syntax['diffAdded'] = syntax['Statement']
	syntax['diffLine'] = syntax['Identifier']
	syntax['gitcommitUntracked'] = syntax['gitcommitComment']
	syntax['gitcommitDiscarded'] = syntax['gitcommitComment']
	syntax['gitcommitSelected'] = syntax['gitcommitComment']
	syntax['gitcommitNoBranch'] = syntax['gitcommitBranch']
	syntax['gitcommitDiscardedArrow'] = syntax['gitcommitDiscardedFile']
	syntax['gitcommitSelectedArrow'] = syntax['gitcommitSelectedFile']
	syntax['gitcommitUnmergedArrow'] = syntax['gitcommitUnmergedFile']
	syntax['jsFuncCall'] = syntax['Function']
	syntax['rubySymbol'] = syntax['Type']
	syntax['hsImportParams'] = syntax['Delimiter']
	syntax['hsDelimTypeExport'] = syntax['Delimiter']
	syntax['hsModuleStartLabel'] = syntax['hsStructure']
	syntax['hsModuleWhereLabel'] = syntax['hsModuleStartLabel']
	syntax['pandocVerbatimBlockDeep'] = syntax['pandocVerbatimBlock']
	syntax['pandocCodeBlock'] = syntax['pandocVerbatimBlock']
	syntax['pandocCodeBlockDelim'] = syntax['pandocVerbatimBlock']
	syntax['pandocTableStructureTop'] = syntax['pandocTableStructre']
	syntax['pandocTableStructureEnd'] = syntax['pandocTableStructre']
	syntax['pandocEscapedCharacter'] = syntax['pandocEscapePair']
	syntax['pandocLineBreak'] = syntax['pandocEscapePair']
	syntax['pandocMetadataTitle'] = syntax['pandocMetadata']

	syntax['LspDiagnosticsDefaultError'] = {fg=colors.red,guisp=colors.red,style='underline'}
	syntax['LspDiagnosticsDefaultInformation'] = {fg=colors.cyan,guisp=colors.cyan,style='underline'}
	syntax['LspDiagnosticsDefaultWarning'] = {fg=colors.yellow,guisp=colors.yellow,style='underline'}
	syntax['LspDiagnosticsDefaultHint'] = {fg=colors.green,guisp=colors.green,style='underline'}
	syntax['LspDiagnosticsUnderlineError'] = syntax['LspDiagnosticsDefaultError']
	syntax['LspDiagnosticsUnderlineWarning'] = syntax['LspDiagnosticsDefaultWarning']
	syntax['LspDiagnosticsUnderlineInformation'] = syntax['LspDiagnosticsDefaultInformation']
	syntax['LspDiagnosticsUnderlineHint'] = syntax['LspDiagnosticsDefaultHint']

	syntax['LspSagaFinderSelection'] = syntax['Search']
	syntax['DiagnosticError'] = syntax['LspDiagnosticsDefaultError']
	syntax['DiagnosticWarning'] = syntax['LspDiagnosticsDefaultWarning']
	syntax['DiagnosticInformation'] = syntax['LspDiagnosticsDefaultInformation']
	syntax['DiagnosticHint'] = syntax['LspDiagnosticsDefaultHint']
	syntax['TargetWord'] = syntax['Title']

	syntax['GitSignsAdd'] = syntax['DiffAdd']
	syntax['GitSignsChange'] = syntax['DiffChange']
	syntax['GitSignsDelete'] = syntax['DiffDelete']

	syntax['VGitSignAdd'] = syntax['DiffAdd']
	syntax['VgitSignChange'] = syntax['DiffChange']
	syntax['VGitSignRemove'] = syntax['DiffDelete']

	for group, highlights in pairs(syntax) do
		utils.highlighter(group, highlights)
	end
end

M.load_syntax()