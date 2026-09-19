#import "template.typ": *
#set  list(marker:none)
#problem(1)[
设$theta in F$是域$K$上次数为$n$的代数元，其在$K$上的极小多项式为$g(x)$。证明：
  - (a) $K[theta] = K(theta) tilde.equiv  K[x] \/ (g(x))$；
  - (b) $[K(theta) : K] = n$，且${1,theta,theta^2,...,theta^(n-1)}$是$K(theta)$在$K$上的一组基；
  - (c) 任意元素$alpha in K(theta)$在$K$上都是代数的，且$alpha$在$K$上的次数整除$n$。
]

#solution(label:"证")[
- (a)先证$K[theta] tilde.equiv K[x]\/(g(x))$:
定义映射: 
$ phi:K[x] arrow.r K[theta] \
  f(x) arrow.r.bar f(theta)
$
下面说明$phi$是从$K[x]$到$K[theta]$的环同态。显然
$
 cases(K[x] = {f(x)|f(x) =  a_n x^n+a_(n-1)x^(n-1)+...+a_1x+a_0 \, a_i in K},
       K[theta] = {f(theta) | f(theta) = a_n theta^n + a_(n-1) theta^(n-1) + ... + a_1 theta + a_0\, a_i in K }
 ) 
$
$phi$可以看作令$f(x) in K[x]$中的$x = theta$。令$f(x) = sum(a_i x^i) $,$g(x) = sum(b_i x^i)$,$f,g in K[x]$。
- 加法：
$  phi(f+g) &=phi((a_n+b_n)x^n + (a_(n-1) + b_(n-1))x^(n-1) + ... + (a_1+b_1)x +(a_0+b_0) )\
            &=phi(sum(a_i+b_i)x^i)\
            &=sum(a_i+b_i)theta^i\
            &=sum(a_i theta^i) + sum(b_i theta^i)\
            &=phi(f)+phi(g)
$
- 乘法:
$
  phi(f dot g) &= phi(sum_(k=0)^(n) sum_(i=0)^k (a_(k-i)b_i)x^k)\
               &= sum_(k=0)^(n) sum_(i=0)^k (a_(k-i)b_i)theta^k\
               &= (a_n theta^n + a_(n-1) theta^(n-1) + ... + a_1 theta + a_0)dot (b_n theta^n +  b_(n-1) theta^(n-1) + ... + b_1 theta + b_0)\
               &= phi(f) dot phi(g) 
  
$
- 满射:
显然对任意$f(theta) in K[theta]$，将$theta$替换为$x$得到$f(x) in K[x]$，显然有
$
  phi(f(x))  = f(theta)
$
即任意$f(theta) in K[theta]$均存在$f(x)  in K[x]$使得$phi(f(x)) = f(theta)$，因此$phi$是满射。
综上令$ker phi$，由环同态基本定理有:
$ 
  K[theta] tilde.equiv K[x] \/ ker phi
$
下面证明$ker phi = (g(x))$。
对于
$
  ker phi = {f(x) in K[x]|f(theta) = 0}
$
而$g(x)$为极小多项式，有$g(theta)=0$,因此有:
$
 g(x) in ker phi,(g) subset.eq ker phi
$
令$f(x) in ker phi$，作带余除法:
$
 f(x) = q(x)g(x) +  r(x),0<=deg(r) <deg(g) 
$
带入$x = theta$有:
$
 f(theta) = q(theta) g(theta) + r(theta) = r(theta) = 0 
$
若$r eq.not 0$，则$r(x)$是比$g(x)$次数更低的以$theta$为根的多项式，与$g(x)$是极小多项式矛盾，因此有$r(x) = 0$,$f(x) = q(x) g(x)$,即
$
 g(x) |f(x)\
 f(x) in ((g(x)) 
$
因此
$
  ker phi subset.eq (g(x))
$
综上有
$
  ker phi = (g(x))
$
故
$
  K[theta] tilde.equiv K[x] \/(g(x))
$
得证。

再证$K[theta] = K(theta)$:
由于$K[x]$是多项式环，$g(x)$是不可约多项式，因此$(g(x))$是极大理想，故$K[x] \/(g(x))$是域，因此$K[theta]$也是域。而$K(theta)$是包含$K$和$theta$的最小子域，显然
$
 K[theta] subset.eq K(theta) 
$
又对于$K(theta)$有:
$
  K(theta) = {f(theta)/(tilde.basic(f)(theta)),f(theta),tilde.basic(f)(theta) in K[theta],tilde.basic(f)(theta) eq.not 0}
$
由于$tilde.basic(f)(theta) eq.not 0$，因此有$gcd(tilde.basic(f),g) = 1$(否则$tilde.basic(f)(theta)$存在因子$g(theta)$那必有$tilde.basic(f)(theta) = q(theta) g(theta) = 0$),由裴蜀定理有，存在$b_1、b_2 in K[theta]$满足:
$
  b_1 tilde.basic(f) + b_2 g=1
$
带入$theta$，由$g(theta)=0$有:
$
  b_1(theta)tilde.basic(f)(theta) = 1
$
因此；
$
  f(theta)/(tilde.basic(f)(theta))) = (f(theta)b_1(theta))/(tilde.basic(f)(theta) b_1(theta)) = f(theta)b_1(theta) in K[theta]
$
故
$
  K(theta) subset.eq K[theta]
$
综上有
$
 K(theta) = K[theta] 
$
综合以上两步证明有
$
  K[theta] = K(theta) tilde.equiv K[x]\/(g(x))
  
$
得证。

- (b)
  - 先证${1,theta,theta^2,...theta^(n-1)}$线性无关:

假设${1,theta,theta^2,...theta^(n-1)}$线性相关，则存在$a_0,a_1,...a_(n-1) in K$，满足:
$
  a_0 + a_1 theta + ... + a_(n-1) theta^(n-1) = 0
$
令$h(x) =a_0 + a_1x + ... + a_(n-1)x^(n-1) $，则$x=theta$是$h(x)$的根。又$g(x)$是极小多项式，必然有$g | h$。但$deg(g) = n$,$deg(h) = n-1 < deg(g)$，只可能是$h$为零多项式，$a_0 = a_1 = ... = a_(n-1)=0$,
因此假设不成立，${1,theta,...,theta^(n-1)}$线性无关，得证。

  - 再证为基:
  对任意$alpha in K(theta) = K[theta]$,存在$f(x) in K[x]$使得$f(theta) = alpha$。由带余除法，令
  $
    f(x) = q(x)g(x) + r(x)
  $
  带入$x=theta$得到
  $
    f(theta) = q(theta)g(theta)+r(theta) = r(theta)
  $
  由$deg(r) <n$，设$r(x) = a_0 +  a_1x +  ... + a_(n-1)x^(n-1)$，则
  $
    alpha = f(theta) = r(theta) = a_0 + a_1 theta + ... + a_(n-1) theta^(n-1)
  $
  即$K(theta)$中任意元素都可以由${1,theta,...,theta^(n-1)}$线性表出,因此${1,theta,...,theta^(n-1)}$是$K(theta)$在$K$上的一组基，$[K(theta):K] = n$得证。

  - (c) 由(b)知$K(theta)$是$K$上的有限扩张且次数为$n$，对任意$alpha in K(theta)$，对于集合${1,alpha,alpha^2,...,alpha^(n-1),alpha^(n)}$这$n+1$个元素必然线性相关(否则与$K(theta)$次数为$n$矛盾)，因此必然存在
  ${a_0,a_1,...,a_(n),a_(n+1)}$满足$a_i in K$且:
  $
    a_0+a_1alpha + a_2 alpha^2 + ... + a_(n)alpha^n  = 0
  $  
  因此$alpha$在$K$上是代数的。下面考虑$K(alpha)$，显然有
  $
    K subset.eq K(alpha) subset.eq K(theta)
  $
  因此由链式法则有:
  $
    [K(theta):K] = [K(theta):K(alpha)] dot [K(alpha):K]
  $
  因此$alpha$在$K$上的次数$[K(alpha):K]$整除$[K(theta):K] = n$，得证。
  
  ]