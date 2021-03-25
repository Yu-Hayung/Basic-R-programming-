# https://www.w3resource.com/r-programming-exercises/matrix/index.php

# 1. R 프로그램을 작성하여 빈 행렬을 만듭니다.
m1 <- matrix(,nrow = 3, ncol = 3)
m1


# 2. 주어진 숫자 벡터를 입력으로 취하는 행렬을 만드는 R 프로그램을 작성하십시오. 행렬을 표시합니다.
m2 <- matrix(c(1:25), nrow = 5, ncol = 5)
m2


# 3. 주어진 숫자 벡터를 입력으로 사용하여 행렬을 만들고 열과 행 이름을 정의하는 R 프로그램을 작성합니다. 행렬을 표시합니다. 
m3 <- matrix(c(20:35), nrow = 4, ncol = 4)
rownames(m3) <- c("행1","행2","행3","행4")
colnames(m3) <- c("열1","열2","열3","열4")
m3

# 4. 쓰기 3의 요소를 액세스 할 수있는 R 프로그램 RD의 칼럼과 
# 2 차 로우 만 3 번째의 행만을 4 번째 주어진 행렬의 칼럼. 
row_names <- c("행1","행2","행3","행4","행5")
col_names <- c("열1","열2","열3","열4","열5")
m4 <- matrix(c(1:25), nrow = 5, byrow = T, dimnames = list(row_names,col_names))
m4

m4[3, ]
m4[2, ]
m4[ ,4]


# 5. 두 개의 2x3 행렬을 만들고 행렬을 더하고 빼고 곱하고 나누는 R 프로그램을 작성합니다. 
m5 <- matrix(c(1:6), nrow = 2, ncol = 3)
v1 <- c(10,57,11,-3,87,4)
m6 <- matrix(v1, nrow = 2, ncol = 3, byrow = T)

m5 + m6
m5 - m6
m5 * m6
m5 / m6


# 6. 주어진 벡터 목록에서 행렬을 만드는 R 프로그램을 작성합니다.
v2 <- c(22,23,24,25,26,27)
v3 <- c(88,87,86,85,84,83)
v4 <- c(77,76,75,74,73,72)
li1 <- list(v2,v3,v4)
m7 <- matrix(li1, nrow = 3)
m7



# 7. 주어진 행렬에서 행 값이 7보다 큰 부분 행렬을 추출하는 R 프로그램을 작성합니다. 
m4[m4[,3]>7,] 


# 8. 행렬을 1 차원 배열로 변환하는 R 프로그램을 작성합니다.
m5 <- matrix(c(1:16), nrow = 4)
ar1 <- as.vector(m5)
ar2 <- as.vector(t(m5))
ar1
ar2

# 9. 동일한 데이터 유형의 데이터 프레임에서 상관 행렬을 만드는 R 프로그램을 작성합니다.
df1 <- data.frame(x1=rnorm(5),
                   x2=rnorm(5),
                   x3=rnorm(5))
cor(df1)                  


# 10. 주어진 행렬을 열 벡터 목록으로 변환하는 R 프로그램을 작성하십시오. 
m8 <- matrix(1:12, ncol=3)
li2 <- split(m8, rep(1:ncol(m8), each = nrow(m8)))
li2


# 11. 주어진 행렬에서 최대 값과 최소값의 행과 열 인덱스를 찾는 R 프로그램을 작성합니다. 
which(m8 == max(m8), arr.ind=TRUE)
which(m8 == min(m8), arr.ind=TRUE)

# 12. 주어진 행렬을 시계 방향으로 90도 회전하는 R 프로그램을 작성합니다.
m8
t(apply(m8,2,rev))



# 13. 동일한 열이지만 다른 행의 주어진 두 행렬을 연결하는 R 프로그램을 작성하십시오. 
m9 <- matrix(13:24, ncol=3)
dim(rbind(m8, m9))



