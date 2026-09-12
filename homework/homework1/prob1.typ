#import "template.typ": *

#problem(1)[
  设$〈a〉$为阶为$m$的循环群，证明下列结论:
  - (a)循环群的子群皆为循环群;
  - (b) 对任意整数$k$,有
  $ | <a^k>| = m/(gcd(k,m)); $
  - (c) 若 $d | m$，则 $〈a〉$ 有且仅有一个指数为 $d$ 的子群；若 $f | m$，则 $〈a〉$ 有且仅有一个阶为 $f$的子群;、
  - (d) 若$f | m$,则$<a>$包含$phi.alt(f)$个阶为$f$的元素;
  - (e) $<a>$包含$phi.alt(m)$个生成元，他们恰为$a^r$，其中$gcd(r,m) = 1$。
]

#solution(label: "证")[
 - (a) 
   - 设$H <= <a>$,显然$a^0 = 1 in H$，若$H = {1}$,，显然$H$是循环群。
 
  - 若$H eq.not {1}$，则有：
 $ H = {a^0,a^(i_1),a^(i_2),...,a^(i_t)  } $
设$i_1$为$H$中元素的最小正指标,令任意其他指标$i_j$,则有:
$  i_j = k i_1 + r,0<= r < i_1  $
由
$ a^(i_j) = a^(k i_1 + r) = (a^(i_1)) ^k dot a^r  $
其中$a^(i_j) in H,a^(i_1) in H,(a^(i_1)) ^k in H$,所以必有$a^r in H$,若$r eq.not 0$,则与$i_1$为$H$中元素最小正指标矛盾，因此必有$r = 0$，$i_1 | i_j,forall j in {2,3,...,t}$,群中元素可写成:
$  H = {  (a^(i_1))^0,(a^(i_1))^1,(a^(i_1))^(k_1),...,(a^(i_1))^(k_(t-1)), } $
显然子群$H = <a^(i_1)>$,即$H$是由元素$a^(i_1)$生成的循环群。因此循环群的子群皆为循环群，得证。


- (b) 令$d=gcd (k,m)$,即$k=d k'$,$m=d m'$且$gcd (k',m') = 1$,令$|< a ^k >| = n$,则由:
$ (a^k)^n = (a )^(k n) =e $
因此$m | k n$,即$d m' |d k' n,m' | k' n$。又由$gcd (m',k') = 1$知有$m'|  n$。由 
$  (a^k)^m' = a^(k m') = a^(d k' m') = a^(d m' k') = (a^m)^ k' = e $
得到有$n | m'$,因此有$n = m' = m/d =m/gcd(k,m)$,即:
$ |<a^k>| = n = m / gcd(k,m) $
得证。


- (c1)存在性:
由由(a)知设子群$H <= <a>$,该子群为循环群，可以写成$H = <a^n>$。又有(b)知该子群的阶为:
$ |<a^n>| = m / gcd(m,n)  $
所以该子群的指数为:
$ |G:H| = (|G|) / (|H|) = m / (m/gcd(m,n))=gcd(m,n) ,G=<a> $ 
因此令$n=d$,由$d | m$可得$gcd(m,d) = d$,故$H=<a^d>$为$<a>$的指数为$d$的子群，存在性得证。

唯一性:设$H' <= G$且$|G:H'| =d$,其中$H' = <a^n>$,由(a),(b)可知
$ gcd(m,n) = d $
故$d | n$,不妨令$n=t d$。$forall (a^n)^k in H'$,必然有$(a^n)^k = (a^(t d))^k = (a^d)^(t k)  in <a^d> = H$,故
$ H' subset.eq H $
另一方面,由拓展欧几里得定理知有$d = u m + v n$,因此$forall (a^d)^k in <a^d> = H$,有
$ (a^d)^k &= (a^(n m + v n))^k\
          &= ((a^m)^n dot (a^n)^v)^k\
          &= (a^n)^(v k) in <a^n> = H'
$
故
$ H subset.eq H' $
综上有$ H = H'$，因此唯一性得证。综合存在性和唯一性，有且仅有一个指数为$d$的子群，命题得证。

c(2)存在性:对$f | m$,令$ n= m / f$,由(a),(b)知$<a^n>$为循环子群且阶为
$ m/gcd(m,n) = m/gcd(m,m/f) =  m/m/f =f $
故存在$<a^(m/f)>$为$<a>$的阶为$f$的子群。

唯一性:同理(c1)的证法，设$H' <= G$,$H' = <a^n'> $且$|<a^n'>| = f$,显然
$  |<a^n'>| = m/gcd(m,n') =  f $
故$gcd(m,n') = m/f$,$m/f | n'$,不妨令$n' = t dot m/f$,则$forall  (a^n')^k in H'$,有
$ (a^n)^k &= (a^(t dot m/f))^k\   
&=(a^t)^(m/f dot k) in <a^(m/f)>
$
故
$ H' subset.eq <a^(m/f)> $
又由$m/f = u m + v n'$,$forall ((a^(m/f))^k in <a^(m/f)>$,有:
$     (a^(m/f))^k &= (a^(u m + v n'))^k\
&= ((a^m)^u dot (a^n')^v)^k\
&= (a^n')^(v k) in <a^n'> = H'   $
故
$  <a^(m/f)> subset.eq H' $
综上有$H'  = a^(m/f)$,唯一性得证。综合存在性和唯一性可得 \<a>有且仅有一个阶为$f$的子群得证。

(d)由$f | m$设$m = f d$,对$a^n in <a>$满足$a^n$的阶为$f$,有:
$  |<a^n>| = |a^n| = m/gcd(m,n) = f $
故$gcd(m,n) = m/f = d$,因此有$d | n$,不妨令$n = r d$,则:
$  gcd(m,n) = gcd(f d,r d) = d dot gcd(f,r) = d $
因此$ gcd(f,r) = 1$,这样的$r$有$phi.alt(f)$个，所对应的$a^(n)(r d = n)$满足$1<=n<=m$，因此$a^n$各不相同，共有$phi.alt(f)$个。因此$<a>$包含$phi.alt(f)$个阶为$f$的元素，得证。

(d)对于$a^n in <a>$为$<a>$的生成元，则$<a>$的阶为$m$，由(b)知:
$   |a^n| = |<a^n>| = m /gcd(m,n) = m  $
因此$gcd(m,n) = 1$，这样的$n$恰有$phi.alt(m)$个，且这些生成元为$a^r$，其中满足$r = gcd(r,m) = 1$，得证。
]