#import "template.typ": *

#problem(6)[
设$F$是特征为素数$p$的域，证明映射
$ phi:F->F,a->a^p  $
是一个域同态。
]
#solution(label:"证")[
- 加法 :$forall a,b in F$
$  phi(a+b) &= (a+b)^p\
            &= sum_(i=0)^(p)binom(p,i)a^i b^(p-i)\
            &=b^p + binom(p,1)a b^(p-1) + ... +binom(p,p-1) a^(p-1) b +a^p
$
其中因为$binom(p,i) = p!/(i! (p-i)!)$，因此$p|binom(p,i)$，中间项均含有因子$p$，又因为char($F$) = $p$，所以中间项均为0，即
$  phi(a+b) = a^p+b^p = phi(a)  + phi(b) $
- 乘法:因为在域中乘法满足交换律，因此:
$  phi(a b) &= (a b)^p\
            &= (a b) (a b) ...(a b)\
            &= (a a  ... a)(b b  ...b)\
            &= a^p b^p\
            &= phi(a) phi(b) 
$
- 单位元:对$1 in F$，有
$  phi(1) =  1^p = 1 $
因此$phi$对单位元保持。

综上所述，映射$phi$是域同态，得证。
]