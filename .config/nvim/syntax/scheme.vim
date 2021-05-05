"===[for Gerbil]===

" TODO: Clean this mess.

"========================
" Gerbil
"========================
" core
syntax keyword gerbilSyntax def
syntax keyword gerbilSyntax def*
syntax keyword gerbilSyntax defvalues
syntax keyword gerbilSyntax define-alias
syntax keyword gerbilSyntax defalias
syntax keyword gerbilSyntax defrules
syntax keyword gerbilSyntax lambda%
syntax keyword gerbilSyntax do-while
syntax keyword gerbilSyntax begin0
syntax keyword gerbilSyntax alet
syntax keyword gerbilSyntax alet*
syntax keyword gerbilSyntax and-let*
syntax keyword gerbilSyntax @list
syntax keyword gerbilSyntax defstruct-type
syntax keyword gerbilSyntax defclass-type
syntax keyword gerbilSyntax define-struct
syntax keyword gerbilSyntax defstruct
syntax keyword gerbilSyntax define-class
syntax keyword gerbilSyntax defclass
syntax keyword gerbilSyntax defmetod
syntax keyword gerbilSyntaxSyntax defsyntax
syntax keyword gerbilKeyword provide
syntax keyword gerbilKeyword extern
syntax keyword gerbilKeyword declare
syntax keyword gerbilKeyword match
syntax keyword gerbilFunction displayln
syntax keyword gerbilFunction let/cc
syntax keyword gerbilFunction let/esc
syntax keyword gerbilFunction cut

setl lispwords+=def,def*,defvalues,define-alias,defalias,defsyntax,defrules,lambda%,extern,do-while
setl lispwords+=begin0,alet,alet*,and-let*,@list,cut,let/cc,let/esc,defstruct-type,defclass-type,define-struct,defstruct,defmetod
setl lispwords+=define-class,defclass,match

" :std/sugar
syntax keyword gerbilSyntax while
syntax keyword gerbilSyntax until
syntax keyword gerbilSyntax try
syntax keyword gerbilSyntax catch
syntax keyword gerbilFunction chain

setl lispwords+=while,until,try,catch,chain

highlight link gerbilSyntax schemeSyntax
highlight link gerbilKeyword schemeKeyword
highlight link gerbilFunction schemeFunction
highlight link gerbilSyntaxSyntax schemeSyntaxSyntax



"=========================
" Guix Guile
"=========================
syntax keyword guixSyntax define-module
syntax keyword guixSyntax define-public
syntax keyword guixSyntax package

highlight link guixSyntax schemeSyntax

setl lispwords+=define-module,define-public,package



"========================
" Chez
"=======================
syntax keyword chezKeyword module
syntax keyword chezKeyword import
syntax keyword chezFunction format
syntax keyword chezFunction filter

highlight link chezKeyword schemeKeyword
highlight link chezFunction schemeFunction

setl lispwords+=library,module,if

