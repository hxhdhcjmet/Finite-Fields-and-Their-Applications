#import "template.typ": *

#problem(8)[
证明任意函数$phi : FF_p -> FF_p$都可以唯一地表示为一个次数不超过$p-1$的多项式函数。
]
#solution(label:"证")[
存在性:

设$FF_p = {a_1,a_2,..,a_p}$其中$a_i eq.not a_j,i eq.not j$。满足:
$   b_i = phi(a_i) in FF_p ,i=1,2,...,p $

设Lagrange多项式:
$  l_i (x) = product_(i eq.not j)(x-a_j)/(a_i-a_j) 
$
在域$FF_p$中显然$a_i - a_j eq.not 0$对任意$i eq.not j$，因此$a_i-a_j in FF_p$有逆元，上式存在，且$l_i(x)$为$p-1$阶多项式。
且有$l_i(a_i) = 1$，$l_i(a_j) = 0,forall j eq.not i$。

设多项式函数$P(x)  in FF_p[x]$定义如下:
$ P(x) = sum_(i=1)^(p)b_i l_i (x)         $
对$a_k in FF_p,k=1,2,...,p$：
$  P(a_k) = sum_(i=1)^(p) b_i l_i (a_k) =  b_k   $
因此$P(x)$与$phi$的定义一致且$deg(P) <=  p-1$，即任意映射$phi$可以表示为次数不超过$p-1$的多项式函数 ，存在性得证。

唯一性:

设还存在另外一个多项式函数$H(x)  in FF_p[x]$满足：
$  H(a_i) = b_i,i=1,2,...,p  $
且$deg(H) <= p-1$，那么设函数：
$   D(x) = P(x) - H(x)  $
显然 $ D(a_i) =P(a_i) - H(a_i) = b_i - b_i =  0,i=1,2,...,p $
即任意$FF_p$中元素都是$D(x)$的根，因此$D(x)$有$p$个根。又
$ deg(D) <= p-1 < p $
与其有$p$个根矛盾，假设不成立，只能有$D(x) = 0$，即
$ P(x) = H(x)  $
唯一性得证。

综合存在性和唯一性，对任意函数$phi : FF_p -> FF_p $可以唯一表示为一个次数不超过$p-1$的多项式函数，得证。



]