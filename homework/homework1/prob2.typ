#import "template.typ": *
#set  list(marker:none)
#problem(2)[
给定域$K <= L$，验证$L$是$K$上的向量空间。
]
#solution(label:"证")[
因为$L$是域，$K<=L$，$K$是$L$的子域。使用$L$中加法的定义，显然$(L,+)$是一个Abel群:
 - 结合律:$forall u,v ,w in L$,
 $ (u+v)+w =u+(v+w) $
 - 交换律:$forall u,v in L$:
 $ u+v = v+u $
 - 单位元:$ 0 in L$，$forall u in L$,使得:
 $  0+ u = u+ 0 = u $
 - 逆元存在：$forall u in L$,$exists -u in L$,满足:
 $ u+(-u) = (-u) + u  = 0 $

使用$L$中乘法定义，$(L,times)$满足标量乘法定义:
- 单位元:由于$K<=L$,显然$1 in K$,对任意$u in L$,
$ 1 times u= u $
- 结合律:$forall k_1,k_2 in K,u in L$有$k_1,k_2 in L$,
$ k_1(k_2 u) = (k_1)k_2 u  $
- 线性性:$forall k_1 in K,u,v in L$，有$k_1 in K$满足
$  k_1(u+v) = k_1u +  k_1v $
- 分配律:$forall k_1 ,k_2 in K,u in L$，有$k_1,k_2 in L$满足:
$  (k_1 + k_2)u = k_1 u + k_2 u  $
最后由于$L$是域，显然对加法和数乘封闭，因此$L$是$K$上的向量空间。

]