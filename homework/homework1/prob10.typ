#import "template.typ": *

#problem(10)[
证明
$  QQ(sqrt(2) + sqrt(3) ) = QQ(sqrt(2) ,sqrt(3)) $
]
#solution(label:"证")[
令$alpha = sqrt(2) + sqrt(3)$，显然$sqrt(2) in QQ(sqrt(2),sqrt(3))$，$sqrt(3) in QQ(sqrt(2),sqrt(3))$。由域上运算对加法封闭，
因此
$ alpha = sqrt(2) + sqrt(3) in QQ(sqrt(2),sqrt(3)) $
因为$QQ(alpha)$是包含$QQ$和$alpha$的最小子域，而现在有$QQ in QQ(sqrt(2),sqrt(3))$、$alpha in QQ(sqrt(2),sqrt(3))$，由最小性必然有:
$ QQ(alpha ) subset.eq QQ(sqrt(2) , sqrt(3)) $
另一方面，由于
$ (sqrt(3) - sqrt(2)) (sqrt(3) + sqrt(2) ) = 3-2=1 $
因此$alpha^(-1) = (sqrt(3) - sqrt(2)) $ 且有$ alpha^(-1)in QQ(alpha)$。又由于
$   cases(sqrt(2) = 1/2(alpha - alpha^(-1)),sqrt(3) = 1/2(alpha + alpha^(-1))) $
因此有$sqrt(2),sqrt(3) in QQ(alpha)$。同样因为$QQ(sqrt(2),sqrt(3))$是包含$QQ,sqrt(2),sqrt(3)$的最小子域，而$QQ,sqrt(2),sqrt(3) in QQ(alpha)$，由最小性必然有
$   QQ(sqrt(2),sqrt(3) ) subset.eq QQ(alpha) $

综上有:
$ QQ(sqrt(2) +sqrt(3))  = QQ(sqrt(2),sqrt(3)) $
得证。
]