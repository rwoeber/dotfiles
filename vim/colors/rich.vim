set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "rich"

highlight Normal                    ctermbg=234
highlight Cursor                    ctermfg=0 ctermbg=15	
highlight CursorLine                ctermbg=233 cterm=NONE
highlight NonText                   ctermfg=240
highlight LineNr                    ctermfg=240
highlight SpecialKey                ctermfg=240
highlight StatusLine                ctermfg=240 cterm=NONE



highlight Comment                   ctermfg=137 
highlight Constant                  ctermfg=67
highlight Define                    ctermfg=130
highlight Statement                 ctermfg=130
highlight Function                  ctermfg=221 
highlight Type                      ctermfg=231
highlight String                    ctermfg=106
highlight Number                    ctermfg=106
highlight Special                   ctermfg=28


highlight Keyword                   ctermfg=130


highlight Error                     ctermfg=221
highlight Identifier                ctermfg=73
highlight Include                   ctermfg=173
highlight PreCondit                 ctermfg=173
highlight PreProc                   ctermfg=103
highlight Search                    ctermfg=NONE ctermbg=235 cterm=underline 
highlight Title                     ctermfg=15
highlight Visual                    ctermbg=60

highlight DiffAdd                   ctermfg=7 ctermbg=71
highlight DiffDelete                ctermfg=7 ctermbg=52
 
highlight pythonBuiltin             ctermfg=73  cterm=NONE    


highlight rubyClass                 ctermfg=130
highlight rubyInstanceVariable      ctermfg=146
highlight rubyInterpolation         ctermfg=28
highlight rubyStringDelimiter       ctermfg=106
highlight rubyBlockParameter        ctermfg=146      
highlight rubySymbol                ctermfg=67
    
"highlight rubyConstant              ctermfg=167
"highlight rubyLocalVariableOrMethod ctermfg=189
"highlight rubyPredefinedConstant    ctermfg=167
"highlight rubyPseudoVariable        ctermfg=221

 
highlight mailSubject               ctermfg=107
highlight mailHeaderKey             ctermfg=221
highlight mailEmail                 ctermfg=107  cterm=underline
 
highlight SpellBad                  ctermfg=160 ctermbg=NONE cterm=underline
highlight SpellRare                 ctermfg=168 ctermbg=NONE  cterm=underline
highlight SpellCap                  ctermfg=189 ctermbg=NONE  cterm=underline
highlight MatchParen                ctermfg=15  ctermbg=23
 

highlight xmlTag                    ctermfg=179
highlight xmlTagName                ctermfg=179
highlight xmlEndTag                 ctermfg=179

hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag
