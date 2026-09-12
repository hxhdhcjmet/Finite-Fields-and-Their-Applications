#import "template.typ": *

#problem(3)[
设$f in FF[x]$，证明元素$b in FF$是多项式$f$的一个重根，当且仅当$f(b) = f'(b) = 0$。 
]

#solution(label:"证")[
必要性($b$是重根$arrow.r.double f(b) = f'(b)  = 0$):

若$b$是多项式$f$的重根,则有$(x-b)^2 | f$,存在$g in FF[x]$,使得
$ f(x) = (x-b)^2 dot g(x) $
因此
$  f'(x) = 2(x-b) dot g(x) + (x-b)^2 dot g'(x) $
将$x=b$带入上两式显然有$f(b) = f'(b) = 0$,必要性得证。

充分性($f(b) = f'(b) = 0 arrow.r.double$ $b$是重根):

若$f(b) = 0$，则有$(x-b) | f$，因此存在$g in FF[x]$满足:
$  f(x) = (x-b) dot g(x) $
因此
$ f'(x) = g(x) + (x-b)dot g'(x) $
由$f'(b) =0$,将$x=b$带入上式得
$ f'(b) = g(b) = 0 $
因此$x=b$是$g(x)$的根，$(x-b)|g$，存在$h in FF[x]$满足:
$  g(x)  = (x-b) dot h(x) $
将上式带入$f$得到:
$  f(x)  = (x-b) dot ((x-b)dot h(x) ) = (x-b)^2 dot h(x) $
显然$(x-b)^2  | f$,$x=b$是$f$的重根得证。综合上述充分性和必要性，$b in FF$是$f$的一个重根$arrow.l.r.double$ $f(b)  = f'(b)  = 0$得证。

]