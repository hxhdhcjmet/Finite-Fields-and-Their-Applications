#import "template.typ": *
#problem(5)[
设$F$是一个含有$81$个元素的有限域。求$F$的特征以及
$ [F : FF_3] $
]

#solution(label:"解")[
由有限域的基本定理，有$F$的特征$sans("char")(F)  =  p$是一个素数，且
$ |F| = p^n,n=[F:FF_p]  $
对于$|F| = 81 = 3^4$，因此显然有$sans("char")(F) = 3$，$[F:FF_3]=4$。

]