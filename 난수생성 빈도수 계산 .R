# R 프로그램을 작성하여 정규 분포의 난수 목록을 만들고 각 값의 발생 횟수를 계산합니다.

n = floor(rnorm(50, 200, 100))
print('List of random numbers in normal distribution:')
print(n)
t = table(n)
print("Count occurrences of each value:")
print(t)
