# https://www.w3resource.com/r-programming-exercises/dataframe/index.php

# 1. R 프로그램을 작성하여 빈 데이터 프레임을 만듭니다.
df1 <- data.frame(name = character(), age = double())
df1


# 2. 주어진 4 개의 벡터에서 데이터 프레임을 만드는 R 프로그램을 작성합니다.
v1 <- c("a","b","c","d","e","f","g","h","r")
v2 <- c(11,12,13,14,15,16,17,18,19)
v3 <- c(21,22,23,24,25,26,27,28,29)
v4 <- c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no')

df2 <- data.frame(v1,v2,v3,v4)
df2

# 3.  주어진 데이터 프레임의 구조를 얻기 위해 R 프로그램을 작성하십시오. 
str(df2)


# 4.  주어진 데이터 프레임의 데이터 특성과 통계 요약을 가져옵니다.
summary(df2)

# 5. 열 이름을 사용하여 데이터 프레임에서 특정 열을 추출하는 R 프로그램을 작성합니다. 
df3 <- data.frame(df2$v1,df2$v4)
df3


# 6. 주어진 데이터 프레임에서 처음 두 행을 추출하는 R 프로그램을 작성하십시오.
df3[1:2,]


# 7. 주어진 데이터 프레임에서 1 번째 와 3 번째 열이있는 3 번째 및 5 번째 행 을 추출하라.
vm1 <- array(c(1:100), dim = c(5,5,1))
df4 <- data.frame(vm1)
df4
df4[c(1,3),c(3,5)]


# 8. 주어진 데이터 프레임에 새 열을 추가하는 R 프로그램을 작성하십시오. 
df4$추가 <- c("하나","둘","셋","넷","다섯")
df4

# 9. 기존 데이터 프레임에 새 행을 추가하는 R 프로그램을 작성하십시오. 
colnames(df4) <- c("첫줄","두줄","셋줄","넷줄","다섯줄","추가된줄")
df4

df5 <- data.frame(첫줄 = c(100) , 두줄 = c(200) , 셋줄 = c(300), 넷줄 = c(400) ,다섯줄 = c(500) , 추가된줄 = c(600) )
df5

df4 <- rbind(df4,df5)
rownames(df4) <- c("첫줄","두줄","셋줄","넷줄","다섯줄","추가된줄")
df4


# 10. 주어진 데이터 프레임에서 이름으로 열을 삭제하는 R 프로그램을 작성합니다.
df4 <- subset(df4, select = -c(두줄))
# 같은 의미의 답 
# df4 <- df4[,-c(2)]
df4

# 11. 주어진 데이터 프레임에서 번호로 행을 삭제하는 R 프로그램을 작성합니다.
df4 <- df4[-c(6),]
df4


# 12. 주어진 데이터 프레임을 여러 열로 정렬하는 R 프로그램을 작성하십시오. 
df4


#13.  내부, 외부, 왼쪽, 오른쪽 결합 (병합)을 생성하는 R 프로그램을 작성합니다. 
df5 = data.frame(numid = c(10, 11, 12, 14))
df6 = data.frame(numid = c(11, 12, 13, 15))
print("Left outer Join:")
result = merge(df5, df6, by = "numid", all.x = TRUE)
result
print("Right outer Join:")
result = merge(df5, df6, by = "numid", all.y = TRUE)
result
print("Outer Join:")
result = merge(df5, df6, by = "numid", all = TRUE)
result
print("Cross Join:")
result = merge(df5, df6, by = NULL)
result


#14. 주어진 데이터 프레임에서 NA 값을 3으로 바꾸는 R 프로그램을 작성합니다.
df7 = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

df7[is.na(df7)] = 3
df7


#15. 주어진 데이터 프레임의 열 이름을 변경하는 R 프로그램을 작성하십시오.
colnames(df7) <- c("이름","점수","시도여부","자격여부")
df7


#16. 주어진 데이터 프레임의 둘 이상의 열 이름을 변경하는 R 프로그램을 작성하십시오.
colnames(df7)[which(names(df7) == "이름")] = "학생 이름"
colnames(df7)[which(names(df7) == "점수")] = "평균 점수 "
df7


#17.  주어진 데이터 프레임에서 임의의 행을 선택하는 R 프로그램을 작성하십시오.
df7[sample(nrow(df7), 3),]
df7[1:3,]


#18. 열 이름으로 주어진 데이터 프레임을 출력하는 R 프로그램을 작성하십시오.
df7[c("시도여부", "자격여부")]



#19. 두 데이터 프레임을 비교하는 R 프로그램을 작성하여 두 번째 데이터 프레임에없는 
# 첫 번째 데이터 프레임의 행을 찾습니다. 
df8 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 14, 15)
)
df9 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 10, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(10, 15, 18)
)
setdiff(df8,df9) # 차집합


#20.  주어진 두 데이터 프레임에 존재하는 요소를 찾는 R 프로그램을 작성하십시오. 
a = c("a", "b", "c", "d", "e")
b = c("d", "e", "f", "g")
intersect(a, b) # 교집합 


#21. 주어진 두 데이터 프레임에 공통적 인 요소가 한 번만 나오는 것을 찾는 R 프로그램을 작성하십시오. 
union(a, b) # 합집합


#22 데이터 프레임의 정보를 파일에 저장하고 파일 정보를 표시하는 R 프로그램을 작성합니다. 
save(df7,file="data.rda")
load("data.rda")
file.info("data.rda") 



#23 데이터 프레임 열의 NA 값 수를 계산하는 R 프로그램을 작성합니다.
sum(is.na(df7$attempts))

