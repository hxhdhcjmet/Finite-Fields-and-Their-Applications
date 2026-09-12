#import "template.typ": *
// AI使用声明
#show heading: set align(center)
= 声明

本次作业使用了AI辅助工具DeepSeek网页版，使用情况如下:
 - $1~5$题未使用AI工具辅助。
 - 第6题：搜索"域同态的定义"，得知满足域同态需要证明加法、乘法和单位元保持，即:
$
cases(phi(a+b) = phi(a) + phi(b),
  phi(a b) = phi(a)phi(b),
  phi(1) = 1
)
$
其中逆元保持不用单独证明，因为由乘法保持和单位元保持可以自然推出:
$
 phi(a)phi(a^(-1)) = phi(a a^(-1)) = phi(1)  = 1 arrow.double phi(a^(-1)) = phi(a)^(-1)
$
证明过程中$ p | binom(p,i) = p!/(i!(p-i)!) $
这一步参考AI给出的详细过程(多个证法中个人最理解的)在此补充:

因为$p$是素数，$1<=i<p-1$，所以$i!$、$(p-i)!$中都不含有因子$p$，而$p!  = p(p-1)!$，对$p!/(i!(p-i)!)$有
$
p!/(i!(p-i)!) = p(p-1)/(i!(p-i)!)
$
其中分母不含因子$p$，分子含有因子$p$，最终结果是整数，因此最终结果一定是$p$的倍数，因此
$
  p  |  binom(p,i) = p!/(i!(p-i)!),1<= i <= p-1
$
得证。
- 第8题：AI提示使用Lagrange多项式构造目标函数，后续证明该函数的存在性和唯一性为自行证明。
#footnote[作业源代码见:https://github.com/hxhdhcjmet/Finite-Fields-and-Their-Applications.git]