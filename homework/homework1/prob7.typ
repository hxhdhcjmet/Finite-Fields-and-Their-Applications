#import "template.typ": *

#problem(7)[
证明在$FF_p[x]$中有
$  x^p - x  = product_(a in FF_p)(x-a)  $
]
#solution(label:"证")[
设$f(x) =x^(p-1) -1 in FF[x] $，$g(x) = product_(a in FF_p 且 a eq.not 0)(x-a)$，对于$FF$中$p$个元素${0,1,...,p-1}$，在$f$中有:
- 当$x eq.not 0$时，由费马定理有
$  x^(p-1) =  1 $
所以$f(x) = 0$。
- 当$x  =  0$时，
$  0^(p-1)  = 0 $
故$f(0) = -1$。因此
$  f(x) = cases(-1 &"," x=0,
0&","x eq.not 0) 
$

在$g$中有:
- 当$x eq.not 0$时，$forall x= a$，g的乘积项中有$(x-a)$，因此
$ g(x) = product(x-a) = 0 $
- 当$x  = 0$时有:
$   g(0) = product_(a)(0-a) =  (-1)^(p-1) product a $
由Wilson定理知，域中所有非零元素乘积为-1，因此:
$ g(0) = (-1)^(p-1) dot (-1) = (-1)^p $
当$p$为奇素数时显然有$g(0) = -1$；当$p=2$时有$g(0) = (-1)^2 = 1 = -1 mod 2$，因此综上有
$ g(0) = -1 $
即有
$  g(x) = cases(-1 &"," x = 0,0 &","x eq.not 0) $

其中$deg(f) = deg(g) = p-1 < p$，由Lagrange插值公式知道这样的多项式是唯一的，因此:
$  f=g $
即
$   x^(p-1) - 1 = product_(a eq.not 0)(x-a) $
上式两边乘以$x$即可得到
$   x^p-x=product_(a in FF_p)(x-a) $

]