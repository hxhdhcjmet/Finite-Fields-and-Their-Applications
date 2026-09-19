#import "template.typ": *
#problem(2)[
设$f(x)=x^2+x+2 in FF_3[x]$。证明$f(x)$在$FF_3$上不可约，并利用商环$FF_3[x] \/(f(x))$构成一个包含$f(x)$的根的$FF_3$的扩域。
]

#solution(label:"证")[
- 先证$f(x)$在$FF_3$上不可约:
因为$deg(f) = 2$，若$f(x)$可约，则必然存在度数为1的因子，即存在$b in FF_3$使得$(x-b) | f(x)$。对于$FF_3 = {0,1,2}$，分别代入$FF_3$中的元素验证:
$
  cases(f(0) = 0^2 + 0 + 2 = 2 eq.not 0,
        f(1) = 1^2 + 1 + 2 = 4 = 1 eq.not 0,
        f(2) = 2^2 + 2 + 2 = 8 = 2 eq.not 0
  )
$
因此实际不存在这样的$b in FF_3$，故$f(x)$在$FF_3$上不可约，得证。

- 再证扩域:
因为$f(x) in FF_3[x]$且不可约，因此$FF_3[x] \/ (f(x))$是一个域。考虑将$K[x] \/(f(x))$看作是$K$上的扩域(将系数映射到剩余类中)，定义映射
$ 
phi: K -> K[x]\/(f(x))\
phi(k) |-> k+(f)
$
该映射是一个单同态，因为:
$
phi(a+b) = (a+b)+(f) = a+(f) + b+(f) = phi(a) + phi(b) \
phi(a b) = a b+(f) = (a+(f))(b+(f)) = phi(a)dot phi(b) \
phi(1) = 1+(f),1+(f)为 K[x] \/ (f(x))中 单 位 元
$
单射:对任意$a in ker phi$，有$phi(a) = a+(f) = 0+(f)$，因此有$a in (f)$。因此存在$q(x) in K[x]$满足$a = f(x)q(x)$，其中$deg(a) = 0$，$deg(f) >= 1$，因此只能有$deg(q) = 0$，$a= f(x) dot 0 = 0$。因此有$ker phi = {0}$，故$phi$是单射($ker phi  = {0} <=>$$phi$为单射)。

令$theta = x+(f)$，$phi(theta) = phi(x+(f))$，将$theta$带入$f$中有
$
  f(theta) &= theta^2 + theta + 2\
            &= (x+(f))^2 + (x+f(x)) + 2\
            &= (x^2+x+2) + (f)\
            &= f(x) +(f(x))\
  
$
因为$f(x) in (f(x))$，故$f(theta) = f(x) + (f(x)) = 0+(f(x))$，因此$theta$是$f(x)$在扩域中的根。而由于$f(x)$是二次多项式，因此扩域$FF_3[x] \/ (f(x))$中的元素可以看作$FF$上次数小于2的多项式:
$
 FF_3[x]\/(f(x)) = FF_3(theta) = {a+b  theta,a,b in FF_3} 
$
综上，$f(x)$在$FF_3$上不可约，$FF_3\/(f(x))$构成包含$f(x)$的根的$FF_3$的扩域，得证。

]