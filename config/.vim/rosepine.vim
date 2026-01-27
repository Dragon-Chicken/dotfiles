set background=dark

"hi clear

let s:t_Co = has('gui_running') ? 16777216 : str2nr(&t_Co)

hi! link Conditional Statement
hi! link CurSearch IncSearch
hi! link CursorLineFold CursorLine
hi! link CursorLineNr CursorLine
hi! link CursorLineSign CursorLine
hi! link Define PreProc
hi! link Delimiter Special
hi! link Exception Statement
hi! link Include PreProc
hi! link Label Statement
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link Macro PreProc
hi! link MessageWindow Pmenu
hi! link PmenuExtraSel PmenuSel
hi! link PmenuKindSel PmenuSel
hi! link PopupNotification Todo
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link StorageClass Type
hi! link Structure Type
hi! link TabLine StatusLineNC
hi! link TabLineFill StatusLineNC
hi! link TabLineSel StatusLine
hi! link Tag Special
hi! link Terminal Normal
hi! link Typedef Type
hi! link lCursor Cursor
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel PmenuSel
hi! link PmenuKind Pmenu
hi! link PmenuKindSel PmenuSel

hi ColorColumn ctermfg=white ctermbg=darkred cterm=NONE
hi Normal ctermfg=grey ctermbg=NONE cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=darkgrey cterm=NONE
hi Cursor ctermfg=black ctermbg=yellow cterm=NONE

hi LineNr ctermfg=cyan ctermbg=NONE cterm=NONE
hi Folded ctermfg=black ctermbg=magenta cterm=reverse
hi Pmenu ctermfg=grey ctermbg=darkgrey cterm=NONE
hi PmenuMatch ctermfg=grey ctermbg=NONE cterm=bold
hi PmenuMatchSel ctermfg=grey ctermbg=magenta cterm=bold
hi PmenuSel ctermfg=white ctermbg=magenta cterm=NONE
hi PmenuSbar ctermfg=white ctermbg=white cterm=NONE
hi PmenuThumb ctermfg=blue ctermbg=blue cterm=NONE
hi SignColumn ctermfg=cyan ctermbg=NONE cterm=NONE
hi MatchParen ctermfg=black ctermbg=yellow cterm=NONE
hi NonText ctermfg=magenta ctermbg=black cterm=NONE "no idea
hi Question ctermfg=magenta ctermbg=NONE cterm=NONE
hi Search ctermfg=cyan ctermbg=black cterm=reverse
hi IncSearch ctermfg=darkyellow ctermbg=black cterm=reverse
hi SpecialKey ctermfg=cyan ctermbg=NONE cterm=NONE
hi SpellBad ctermfg=red ctermbg=NONE cterm=underline
hi SpellCap ctermfg=green ctermbg=NONE cterm=underline
hi SpellLocal ctermfg=white ctermbg=NONE cterm=underline
hi SpellRare ctermfg=magenta ctermbg=NONE cterm=underline
hi Title ctermfg=cyan ctermbg=NONE cterm=NONE

hi Visual ctermfg=NONE ctermbg=darkgray cterm=NONE
hi VisualNOS ctermfg=black ctermbg=white cterm=NONE

hi StatusLine ctermfg=magenta ctermbg=black cterm=NONE
hi StatusLineNC ctermfg=darkgray ctermbg=gray cterm=reverse
hi StatusLineInv ctermfg=magenta ctermbg=black cterm=reverse
hi StatusLineDiffAdd ctermfg=green ctermbg=black cterm=NONE
hi StatusLineDiffSub ctermfg=red ctermbg=black cterm=NONE

hi ModeMsg ctermfg=magenta ctermbg=NONE cterm=NONE
hi MoreMsg ctermfg=cyan ctermbg=NONE cterm=NONE
hi ErrorMsg ctermfg=white ctermbg=red cterm=NONE
hi WarningMsg ctermfg=magenta ctermbg=NONE cterm=NONE
hi WildMenu ctermfg=black ctermbg=magenta cterm=NONE

hi Error ctermfg=red ctermbg=white cterm=reverse

hi DiffAdd ctermfg=darkgreen ctermbg=white cterm=NONE
hi DiffChange ctermfg=darkblue ctermbg=white cterm=NONE
hi DiffDelete ctermfg=darkmagenta ctermbg=white cterm=NONE
hi DiffText ctermfg=grey ctermbg=black cterm=NONE

hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=blue cterm=NONE
hi CursorIM ctermfg=black ctermbg=yellow cterm=NONE
hi Directory ctermfg=cyan ctermbg=NONE cterm=NONE
hi EndOfBuffer ctermfg=blue ctermbg=NONE cterm=NONE
hi FoldColumn ctermfg=darkcyan ctermbg=NONE cterm=NONE
hi VertSplit ctermfg=blue ctermbg=NONE cterm=NONE
hi QuickFixLine ctermfg=magenta ctermbg=black cterm=reverse "find out what quickfix is

hi Comment ctermfg=blue ctermbg=NONE cterm=NONE
hi Constant ctermfg=yellow ctermbg=NONE cterm=NONE
hi String ctermfg=yellow ctermbg=NONE cterm=NONE
hi Character ctermfg=yellow ctermbg=NONE cterm=NONE
hi Number ctermfg=yellow ctermbg=NONE cterm=NONE
hi Boolean ctermfg=yellow ctermbg=NONE cterm=NONE
hi Float ctermfg=yellow ctermbg=NONE cterm=NONE

hi Identifier ctermfg=cyan ctermbg=NONE cterm=NONE
hi Function ctermfg=cyan ctermbg=NONE cterm=NONE
hi Statement ctermfg=magenta ctermbg=NONE cterm=NONE
hi Operator ctermfg=magenta ctermbg=NONE cterm=NONE
hi Keyword ctermfg=magenta ctermbg=NONE cterm=NONE
hi PreProc ctermfg=blue ctermbg=NONE cterm=NONE
hi Type ctermfg=green ctermbg=NONE cterm=NONE
hi Special ctermfg=green ctermbg=NONE cterm=NONE
hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold

hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
hi Todo ctermfg=NONE ctermbg=NONE cterm=reverse

"idk what these do
"hi Ignore ctermfg=darkgray ctermbg=NONE cterm=NONE
"hi TitleBar ctermfg=white ctermbg=black cterm=NONE
"hi TitleBarNC ctermfg=gray ctermbg=black cterm=NONE
"hi ToolbarButton ctermfg=white ctermbg=darkgray cterm=NONE
"hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
"hi debugBreakpoint ctermfg=green ctermbg=darkblue cterm=reverse
"hi debugPC ctermfg=cyan ctermbg=darkblue cterm=reverse
