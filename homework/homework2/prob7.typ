#import "template.typ": *
#problem(7)[
求多项式
$  x^2 + 1 $
在$FF_3$上的分裂域，并写出该分裂域中的全部元素。
]

#solution(label:"解")[
    对$ FF_3 = {0,1,2}$，分别将其中元素代入$f(x) = x^2 + 1$得：
    $
      cases(f(0) = 0^2 +  1 = 1 eq.not 0,
             f(1) = 1^2 + 1 = 2 eq.not 0,
             f(2) = 2^2 + 1 = 5 = 2 eq.not 0   
      )
    $
    因此$f(x)$在$FF_3$上无根，即$f(x)$在$FF_3$上不可约。添加一个根$alpha$使得满足$alpha ^2 + 1 = 0$，也即$alpha^2 = -1 = 2$。显然$plus.minus alpha$都是$f(x)$的根，有:
    $
      f(x) = x^2+ 1 = (x+ alpha)(x-alpha)
    $
    因此$f(x)$在$FF_3$上完全分裂，分裂域为$K = FF_3(alpha,-alpha) = FF_3(alpha)$。又因为$alpha$在$FF_3$上的极小多项式为$f(x) = x^2 + 1$，$deg (f) = 2$，因此
    $  [K : FF_3]  = 2  $
    且${1,alpha}$是$K$关于$FF_3$的线性空间的一组基，$K$中任意元素都可以唯一地表示为
    $   a+b alpha ,a,b in FF_3 $
    因此$|K| = 3^2 = 9$，$K = {0,1,2,alpha,1+alpha,2+alpha,2alpha,1+2alpha,2+2alpha}$。

]
