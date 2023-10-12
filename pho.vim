if exists("b:current_syntax")
    finish
endif

syntax clear

syntax region cCode start=/\/\/ ---BEGIN C CODE---/ end=/\/\/ ---END C CODE---/ contains=ALL
syntax region bashCode start=/^#!/ end=/\/\/ ---BEGIN C CODE---/ contains=ALL


syntax match cKeywords "\<\(if\|else\|for\|while\|do\|switch\|case\|int\|float\|double\|char\|return\)\>" containedin=cCode
highlight cKeywords cterm=bold ctermfg=10 guifg=LightGreen gui=bold

syntax match cFunctions "\w\+\s*(\s*\w*\s*)\s*{" containedin=cCode
highlight cFunctions cterm=bold ctermfg=12 guifg=LightBlue gui=bold

syntax match cFunctionCalls "\w\+\ze\s*(\_[^)]*)" containedin=cCode
highlight cFunctionCalls cterm=bold ctermfg=12 guifg=LightBlue gui=bold

syntax match cNumbers "\d\+\(\.\d\+\)\?" containedin=cCode
highlight cNumbers ctermfg=11 guifg=Yellow

syntax match bashParams "\$\d\+" containedin=bashCode
highlight bashParams ctermfg=3 guifg=#FFA500

highlight cCode ctermfg=green guifg=green
highlight bashCode ctermfg=3 guifg=#FFA500

let b:current_syntax = 'pho'


