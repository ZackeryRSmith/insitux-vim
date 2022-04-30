" Vim syntax file               
" Language: Insitux             
" Maintainer: Zackery Smith     
" Latest Revision: 30 April 2022
" NOTE: ix.vim is in a very early state, improvements will be made in time.

if exists("b:current_syntax")
    finish
endif

" keyword.control.insitux
syntax match insituxKeyword "\vif!|if|when|unless|loop|match|catch|while|function|fn|var!|let!|var|let|return"

" keyword.operation.insitux
syntax match insituxKeyword "\vreductions|partition|lower-case|update-at|read-lines|trim-start|upper-case|char-code|print-str|group-by|rand-int|trim-end|distinct|reverse|satisfy|flatten|shuffle|sort-by|part-by|starts\?|substr\?|replace|symbols|version|type-of|pos-juxt|prepend|append|import|empty\?|fast\!\=|fast\/\/|fast\<\=|fast\>\=|filter|reduce|remove|insert|sample|repeat|set-at|to-key|to-num|to-vec|assoc|bool\?|count|freqs|dict\?|ends\?|even\?|fast\*|fast\+|fast\-|fast\/|fast\<|fast\=|fast\>|floor|times|func\?|log10|null\?|str\<\=|str\>\=|str\<|str\>|about|print|range|recur|reset|round|split|tests|wild\?|zero\?|first|last|skip|drop|crop|omit|juxt|acos|asin|atan|ceil|cosh|dict|eval|strn|ext\?|find|into|join|key\?|keys|log2|logn|neg\?|num\?|odd\?|pos\?|rand|sect|sinh|sort|sqrt|str\*|str\?|tanh|time|trim|vals|vec\?|\.\.\.|\>\>\>|abs|and|cos|dec|for|idx|inc|len|map|max|min|rem|sin|str|tan|val|vec|xor|neg|\!\=|\*\*|\-\>|\.\.|\/\/|\<\<|\<\=|\>\=|\>\>|PI|do|or|\!|\&|\*|\+|\-|\.|\/|\<|\=|\>|E|\^|\||\~" 

" constant.numeric.insitux
syntax match insituxFunction "\v\%\d\*|\\d\+|true|false|null|args"
syntax match insituxNumber /\v<[0-9]\d*/

" string.quoted.double.insitux
syntax region insituxString start=/\v"/ skip=/\v\\./ end=/\v"/

" comment.line
syntax match insituxComment "\v;.*$"

highlight link insituxKeyword Keyword
highlight link insituxFunction Function
highlight link insituxComment Comment
highlight link insituxNumber Number
highlight link insituxString String

let b:current_syntax = "insitux"
