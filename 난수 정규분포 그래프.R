# 난수로 정규분포 곡선 만들기 


n = floor(rnorm(10000, 500, 100))
t = table(n)
barplot(t)
