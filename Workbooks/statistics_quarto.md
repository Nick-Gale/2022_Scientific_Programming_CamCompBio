---
title: "Statistics and Database Notes"
author: "Nicholas Gale"
date: "01/10/2022"
format: html:
	code-fold: true
jupyter: julia-1.8
---
# 1.0 Statistics
Statistics form a large part of the core of quantitative science: they are the de facto standard by which quantitative data is interogated and analysed (but not the only method). Julia has first class support for statistics and they are presented in an initiutive functional manner. The two major packages we will interact with are: ``Statistics`` and ``StatsBase``. For many tasks ``StatsBase`` is more than sufficient:

```{julia}
using StatBase, Random
```
## 1.1 Basic Statistics
Let's generate some random numbers from several different distributions and computer some basic statistics. We will examine a uniform, normal, and Poisson distribution.

```{julia}
ru = rand(1000)
rn = randn(1000)
rp = randexp(1000)
```

We now have three lists of random numbers but they were generated without any reference to the parameters that define them (the distributions are easy to guess from the function names). Let's try and work them out using the StatsBase package. The most obvious statistics to compute are the mean and the standard deviation.

```{julia}
av_u = av(ru)
std_u = std(ru)

av_n = av(rn)
std_n = std(rn)

av_p = av(rp)
std_p = std(rp)

println("The means and standard deviations are 
\n
