#import "template.typ": *

#problem(4)[
设$f in FF[x]$且deg(f)=2或3,证明$f$在$FF[x]$中不可约,当且仅当$f$在$FF$中没有根。
]

#solution(label:"证")[
充分性($f$在$FF$中没有根$arrow.r.double$$f$在$FF[x]$中不可约):

反证法:假设$f$在$FF$中没有根时，$f$在$FF[x]$中可约,由可约知:
$  f = b dot  c $
其中$b,c in FF[x]$且不是常数，即$deg(b) >= 1,deg(c) >=1$。在域中$f = b dot c$有
$ deg(f) = deg(b)  + deg(c) $
其中$deg(f) = 2$或$3$,因此$b,c$中必然有一个度数为1，不妨令$deg(b)=1$,那么该多项式可以写成
$ b  = a x + d ,a eq.not 0 $
由于$a,d in FF$,因此对$a eq.not 0$,存在逆元$a^(-1)$,因此令$b=0$可以解得
$ x = (-d)/a  in FF $
将$x = (-d)/a$带回$f$可得:
$ f((-d)/a) = 0  $
即$(x+d/a) | f$，$x = (-d)/a$是$f$的一个根，这与$f$在$FF$中没根相矛盾，因此假设错误，$f$在$FF[x]$中不可约，充分性得证。

必要性($f$在$FF[x]$中不可约$arrow.r.double$ $f$在$FF$中没有根):

反证法:假设$f$在$FF[x]$中不可约,$f$在$FF$中有根。不妨设根为$x=b$,则$(x-b)|f$,存在$g in FF[x]$满足:
$ f(x) =  (x-b)dot g(x)  $
其中
$ deg(f) =deg(x-b) + deg(g) = 1 + deg(g) =2  或 3 $
因此$deg(g)>= 2-1 = 1$,故$g$不是常数,$f$可以写成两个非常数多项式的乘积，这与$f$不可约矛盾，因此假设不成立，$f$在$FF$中没有根，必要性得证。综上充分性和必要性,$f $在$ FF[x]$中不可约$arrow.l.r.double$$f$在$FF$中没有根，得证。

]