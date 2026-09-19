#import "template.typ": *
// AI使用声明
#show heading: set align(center)
= 声明

本次作业使用了AI辅助工具，具体情况如下:
- 第3题证明求助于DeepSeek网页版，其给出的解释证明即为正文所写(发现这个证明与课上讲的基本一致)。然后同样问题询问Chatgpt，得到如下证明(实质差不多，但是更详细):
首先$F(alpha) tilde.equiv F[x]\/(f) tilde.equiv F(beta) $自然可以得到$F(alpha) tilde.equiv F(beta)$，下面重点说明这个保持$F$中元素不动且将$alpha$映射到$beta$的域同构:
$  phi : F(alpha) -> F(beta)\
   g(alpha) |-> g(beta) 
$
即$phi(g(alpha)) = g(beta)$,$g(x) in F[x]$。之所以可以将$F(alpha)$中的元素写成$g(alpha)$，是因为第1题就证了的
$  F(alpha) = F[alpha] $
同理有
$  F(beta) = F[beta] $

对于该映射$phi$：
- 良定义:对$g(alpha) = h(alpha)$，有
$   g(alpha) = h(alpha) => (g-h)(alpha) = 0 $
因为$f(x)$是$alpha$的极小多项式，因此
$  f(x) | (g-h)(x) $
因此存在$q(x) in F[x]$使得
$   (g-h)(x) = q(x)f(x)  $
令$x=beta$带入，由于$f(beta) = 0$，得到
$  (g-h)(beta)  = q(beta)f(beta) = 0 => g(beta) = h(beta) $
因此$phi$是良定义的。

- 域同态:
  对于$u = g(alpha)$，$v = h(alpha)$有
  - 加法:
  $  phi(u + v) &= phi((g+h)(alpha))\
                &= (g+h)(beta)\
                &= g(beta) + h(beta)\
                &= phi(u) + phi(v)
  $

  - $
     phi(u v) &= phi(g h(alpha))\
              &= (g h)(beta)\
              &= g(beta) h(beta)\
              &= phi(u) phi(v) 
    $
  因此$phi$是域同态。

- 保持$F$中元素不动:对任意$a in F$，将$a$看成常数多项式，有:
$  phi(a) = a $
因此它抱持$F$中元素不动。
- $alpha$映射到$beta$：
对于$alpha$，取多项式$g(x) = x$，那么 
$  phi(alpha) = beta $

- 证明$phi$是同构:
  - 单射:假设
  $  phi(g(alpha)) = 0 $
  又因为$phi(g(alpha)) = g(beta) = 0$，而$f$是$beta$的极小多项式，因此有
  $  f(x) | g(x)\
      g(x) = f(x)q(x),q(x) in F[x]
  $
  代入$x=alpha$得到
  $  g(alpha) = f(alpha)q(alpha) = 0 $
  因此$ phi(g(alpha)) = 0 => g(alpha)  = 0 $
  所以
  $ker phi = {0} $，因此$phi$是单射。

  - 满射：
  对任意$y in F(beta)$，由于$F(beta) = F[beta]$，因此存在$g(x) in F[x]$使得满足
  $  y = g(beta) $
  根据定义有
  $  phi(g(alpha)) = g(beta)  =y $
  因此存在$g(alpha) in F(alpha)$满足上式。即每个$F(beta)$中的元素都存在$F(alpha)$在$phi$下的原像，因此$phi$是满射。
综上$phi$是一个域同构。

综合以上所有证明过程，说明的确存在保持$F$中元素不变且将$alpha$映射到$beta$的域同构映射$phi$，得证。

- 第6题证明子域判别法时，存在性证明借助DeepSeek网页版辅助证明(如果直接使用课件定理而不证明，应该算1、2，4-7题未使用AI辅助完成)。
- 其余题目未使用AI工具。
