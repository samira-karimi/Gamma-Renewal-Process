# Renewal-Process (Count models)
Renewal process is usually represented under Poisson distribution, in which the time between events follow an exponential distribution. The other famous distribution for renewal process is negative binomial. The former can only represent equidispersion, meaning equal mean and variance. The latter can also represent overdispersion, but underdispersion is still not explained by this model. To overcome this issue, Gamma or Inverse Gaussian renewal process can be used.

For Gamma renewal process GammaRenewal.m should be compiled. This file uses GamCliklhd.m as a function.
For Inverse Gaussian renewal process IGRenewal.m should be compiled. This file uses IGliklhd.m as a function.
