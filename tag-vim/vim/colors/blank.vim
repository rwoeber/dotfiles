" Based on 
" Base16 Default (https://github.com/chriskempson/base16)
" Scheme: Chris Kempson (http://chriskempson.com)

" GUI color definitions
let s:gui00 = "151515"
let s:gui01 = "202020"
let s:gui02 = "303030"
let s:gui03 = "505050"
let s:gui04 = "b0b0b0"
let s:gui05 = "d0d0d0"
let s:gui06 = "e0e0e0"
let s:gui07 = "f5f5f5"
let s:gui08 = "ac4142"
let s:gui09 = "d28445"
let s:gui0A = "f4bf75"
let s:gui0B = "90a959"
let s:gui0C = "75b5aa"
let s:gui0D = "6a9fb5"
let s:gui0E = "aa759f"
let s:gui0F = "8f5536"

" Terminal color definitions
let s:cterm00 = "00"
let s:cterm03 = "08"
let s:cterm05 = "07"
let s:cterm07 = "15"
let s:cterm08 = "01"
let s:cterm0A = "03"
let s:cterm0B = "02"
let s:cterm0C = "06"
let s:cterm0D = "04"
let s:cterm0E = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "18"
  let s:cterm02 = "19"
  let s:cterm04 = "20"
  let s:cterm06 = "21"
  let s:cterm09 = "16"
  let s:cterm0F = "17"
else
  let s:cterm01 = "10"
  let s:cterm02 = "11"
  let s:cterm04 = "12"
  let s:cterm06 = "13"
  let s:cterm09 = "09"
  let s:cterm0F = "14"
endif

" Theme setup
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "base16-default"

set background=dark
hi clear

let g:colors_name = "rwoeber"



" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun



" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold")
call <sid>hi("Debug",         s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Directory",     s:gui05, "",  s:cterm05, "", "")
call <sid>hi("ErrorMsg",      s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("Exception",     s:gui05, "",  s:cterm05, "", "")
call <sid>hi("FoldColumn",    "", s:gui05, "",  s:cterm05, "")
call <sid>hi("Folded",        s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("IncSearch",     s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Italic",        "", "", "", "", "none")
call <sid>hi("Macro",         s:gui05, "",  s:cterm05, "", "")
call <sid>hi("MatchParen",    s:gui05, s:gui00, s:cterm05, s:cterm00,  "reverse")
call <sid>hi("ModeMsg",       s:gui05, "",  s:cterm05, "", "")
call <sid>hi("MoreMsg",       s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Question",      s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Search",        s:gui05, s:gui00, s:cterm05, s:cterm00,  "reverse")
call <sid>hi("SpecialKey",    s:gui05, "",  s:cterm05, "", "")
call <sid>hi("TooLong",       s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Underlined",    s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Visual",        "", s:gui05, "",  s:cterm05, "")
call <sid>hi("VisualNOS",     s:gui05, "",  s:cterm05, "", "")
call <sid>hi("WarningMsg",    s:gui05, "",  s:cterm05, "", "")
call <sid>hi("WildMenu",      s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Title",         s:gui05, "",  s:cterm05, "", "none")
call <sid>hi("Conceal",       s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("Cursor",        s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("NonText",       s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Normal",        s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("LineNr",        s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("SignColumn",    s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("SpecialKey",    s:gui05, "",  s:cterm05, "", "")
call <sid>hi("StatusLine",    s:gui05, s:gui00, s:cterm05, s:cterm00, "none")
call <sid>hi("StatusLineNC",  s:gui05, s:gui00, s:cterm05, s:cterm00, "none")
call <sid>hi("VertSplit",     s:gui05, s:gui00, s:cterm05, s:cterm00, "none")
call <sid>hi("ColorColumn",   "", s:gui05, "",  s:cterm01, "none")
call <sid>hi("CursorColumn",  "", s:gui05, "",  s:cterm01, "none")
call <sid>hi("CursorLine",    "", s:gui05, "",  s:cterm01, "none")
call <sid>hi("CursorLineNr",  s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("PMenu",         s:gui05, s:gui00, s:cterm05, s:cterm00, "none")
call <sid>hi("PMenuSel",      s:gui05, s:gui00, s:cterm05, s:cterm00, "reverse")
call <sid>hi("TabLine",       s:gui05, s:gui00, s:cterm05, s:cterm00, "none")
call <sid>hi("TabLineFill",   s:gui05, s:gui00, s:cterm05, s:cterm00, "none")
call <sid>hi("TabLineSel",    s:gui05, s:gui00, s:cterm05, s:cterm00, "none")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Character",    s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Comment",      s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Conditional",  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Constant",     s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Define",       s:gui05, "",  s:cterm05, "", "none")
call <sid>hi("Delimiter",    s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Float",        s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Function",     s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Identifier",   s:gui05, "",  s:cterm05, "", "none")
call <sid>hi("Include",      s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Keyword",      s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Label",        s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Number",       s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Operator",     s:gui05, "",  s:cterm05, "", "none")
call <sid>hi("PreProc",      s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Repeat",       s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Special",      s:gui05, "",  s:cterm05, "", "")
call <sid>hi("SpecialChar",  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Statement",    s:gui05, "",  s:cterm05, "", "")
call <sid>hi("StorageClass", s:gui05, "",  s:cterm05, "", "")
call <sid>hi("String",       s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Structure",    s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Tag",          s:gui05, "",  s:cterm05, "", "")
call <sid>hi("Todo",         s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("Type",         s:gui05, "",  s:cterm05, "", "none")
call <sid>hi("Typedef",      s:gui05, "",  s:cterm05, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", s:gui05, "",  s:cterm00, "undercurl")
call <sid>hi("SpellLocal",   "", s:gui05, "",  s:cterm00, "undercurl")
call <sid>hi("SpellCap",     "", s:gui05, "",  s:cterm00, "undercurl")
call <sid>hi("SpellRare",    "", s:gui05, "",  s:cterm00, "undercurl")

" Additional diff highlighting
call <sid>hi("DiffAdd",      s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("DiffChange",   s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("DiffDelete",   s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("DiffText",     s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("DiffAdded",    s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("DiffFile",     s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("DiffNewFile",  s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("DiffLine",     s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("DiffRemoved",  s:gui05, s:gui00, s:cterm05, s:cterm00, "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:gui05, "",  s:cterm05, "", "")
call <sid>hi("rubyConstant",                s:gui05, "",  s:cterm05, "", "")
call <sid>hi("rubyInterpolation",           s:gui05, "",  s:cterm05, "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("rubyRegexp",                  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("rubySymbol",                  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("rubyStringDelimiter",         s:gui05, "",  s:cterm05, "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("phpComparison",      s:gui05, "",  s:cterm05, "", "")
call <sid>hi("phpParent",          s:gui05, "",  s:cterm05, "", "")

" HTML highlighting
call <sid>hi("htmlBold",    s:gui05, "",  s:cterm05, "", "")
call <sid>hi("htmlItalic",  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("htmlEndTag",  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("htmlTag",     s:gui05, "",  s:cterm05, "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:gui05, "",  s:cterm05, "", "")
call <sid>hi("cssClassName",   s:gui05, "",  s:cterm05, "", "")
call <sid>hi("cssColor",       s:gui05, "",  s:cterm05, "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:gui05, "",  s:cterm05, "", "")
call <sid>hi("sassClassChar",  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("sassInclude",    s:gui05, "",  s:cterm05, "", "")
call <sid>hi("sassMixing",     s:gui05, "",  s:cterm05, "", "")
call <sid>hi("sassMixinName",  s:gui05, "",  s:cterm05, "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:gui05, "",  s:cterm05, "", "")
call <sid>hi("javaScriptBraces",  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("javaScriptNumber",  s:gui05, "",  s:cterm05, "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:gui05, "",  s:cterm05, "", "")
call <sid>hi("markdownCodeBlock",         s:gui05, "",  s:cterm05, "", "")
call <sid>hi("markdownHeadingDelimiter",  s:gui05, "",  s:cterm05, "", "")

" Git highlighting
call <sid>hi("gitCommitOverflow",  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("gitCommitSummary",   s:gui05, "",  s:cterm05, "", "")
  
" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("GitGutterChange",  s:gui05, s:gui00, s:cterm05, s:cterm00, "")
call <sid>hi("GitGutterDelete",  s:gui05, s:gui00, s:cterm05, s:cterm00, "")


" GitGutter highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui05, "",  s:cterm05, "", "")
call <sid>hi("NERDTreeExecFile",  s:gui05, "",  s:cterm05, "", "")

" Remove functions
delf <sid>hi

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F








