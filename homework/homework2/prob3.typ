#import "template.typ": *
#problem(3)[
设$f(x) in F[x]$是不可约多项式，$alpha$和$beta$是$f(x)$在两个括域中的根。证明存在一个保持$F$中元素不动并将$alpha$映射到$beta$的域同构
$  F(alpha) tilde.equiv F(beta) $

]

#solution(label:"证")[
结合第一题的证明，令
$
phi_1: F[x] ->F(alpha)\
f(x) |-> f(alpha)
$
第1题已经证明得到$phi_1$是同态映射，有$F(alpha) tilde.equiv F[x]\/(f)$。因此有域同构
$
sigma_1:F[x]\/(f)->F(alpha)\
g(x)+(f(x))|-> g(alpha)
$
其中对任意$g(x) in F[x]$，有$sigma_1 (g(x)+(f(x))) = g(alpha)$，那么对任意$x$有$sigma_1(x+(f(x))) =  alpha$，因此对任意$c in F$有:
$
  sigma_1(c + (f(x))) = c
$
对$beta$做同理上述构造可以有$phi_2,sigma_2$，其中
$ sigma_2 : F[x]\/(f)\
  g(x) + (f(x)) |-> g(beta)
$
同理有任意$c in F$，
$
  sigma_2(c + (f(x))) = c
$
且$F(alpha) tilde.equiv F[x]\/(f) tilde.equiv F(beta)$。

现在构造复合映射$sigma= sigma_2 compose sigma_1^(-1) $,满足:$sigma:F[alpha] -> F[beta]$，复合映射同样是域同构，下面说明它的性质：
- 保持$F$中元素不动:对任意$c in F$，
$  sigma(c) &= sigma_2  compose sigma_1^(-1)(c)\
            & =  sigma_2(sigma_1^(-1)(c))\
            &= sigma_2(c+(f(x)))\
            &= c
            
$
因此$F$中元素在$sigma$下保持不动。
- 将$alpha$映射到$beta$：
$
  sigma(alpha) &= sigma_2 compose sigma_1^(-1)(alpha)\
                &= sigma_2(sigma_1^(-1)(alpha))\
                &= sigma_2(x+(f(x)))\
                &= beta
$
因此$sigma$将$alpha$映射到了$beta$。

综上，存在满足保持$F$中的元素不动并将$alpha$映射到$beta$的域同构$sigma$。

]