#1. 사용자 (이름 및 나이)로부터 입력을 받아 값을 표시하는 R 프로그램을 작성합니다.R 설치 버전도 인쇄하십시오. 

name <- readline(prompt = "이름을 입력하세요.")
age <- readline(prompt = "나이를 입력하세요.")
print(paste("당신의 이름은", name,"나이는", age, "입니다."))
print(R.version.string)

#2. 메모리에있는 개체의 세부 정보를 얻기 위해 R 프로그램을 작성합니다.

name2 = "Python"; 
n1 =  10; 
n2 =  0.5
nums = c(10, 20, 30, 40, 50, 60)
print(ls())
print("Details of the objects in memory:")
print(ls.str())

#3. R 프로그램을 작성하여 20에서 50까지의 숫자 시퀀스를 만들고 20에서 60까지의 숫자 평균과 51에서 91까지의 숫자 합계를 찾으십시오 .

seq(20:50)
mean(seq(20:60))
sum(seq(51:91))

#4. R 프로그램을 작성하여 -50에서 +50 사이의 10 개의 임의 정수 값을 포함하는 벡터를 만듭니다. 

sample(-50:50, 10, replace = T)

#5. 처음 10 개의 피보나치 수를 얻기 위해 R 프로그램을 작성합니다. 

Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)

#6. R 프로그램을 작성하여 주어진 숫자까지 모든 소수를 얻습니다 (Eratosthenes 체를 기반으로 함). 

prime_numbers <- function(n) {
  if (n >= 2) {
    x = seq(2, n)
    prime_nums = c()
    for (i in seq(2, n)) {
      if (any(x == i)) {
        prime_nums = c(prime_nums, i)
        x = c(x[(x %% i) != 0], i)
      }
    }
    return(prime_nums)
  }
  else 
  {
    stop("Input number should be at least 2.")
  }
} 
prime_numbers(12)

#7. R 프로그램을 작성하여 1부터 100까지의 숫자를 인쇄하고 3의 배수에 대해 "Fizz"를 인쇄하고 5의 배수에 대해 "Buzz"를 인쇄하고 둘 다의 배수에 대해 "FizzBuzz"를 인쇄하십시오. 

a <- seq(1:100)
for (i in a){if(i %% 3 ==0 & i %% 5 ==0) print("FizzBizz")
             else if (i %% 3 == 0) print("Fizz")
             else if (i %% 5 == 0) print("Bizz")
             else print(i)}

#8.R 프로그램 (22) 사이의 상부 케이스 및 추출물 편지에서 소문자 제 10 영어 문자와 마지막 문자 (10)를 추출하는 ND 24 번째 대문자 글자.
t = head(letters,10)
t
t2 = tail(LETTERS, 10)
t2
e = tail(LETTERS[22:24])
e


#9.주어진 숫자의 인자를 찾기 위해 R 프로그램을 작성하십시오.
print_factor <- function(n){
  print(paste(n,"인자는 다음과 같습니다."))
  for(i in 1:n){
    if((n %% i) == 0) {
      print(i)
    }
  }
}
print_factor(20)


#10. 주어진 벡터의 최대 값과 최소값을 찾는 R 프로그램을 작성하십시오.
v1 <- c(1:45)
min(v1)
max(v1)


#11. 주어진 문자열의 고유 한 요소와 벡터의 고유 한 수를 가져 오는 R 프로그램을 작성하십시오.
v2 <- paste(c("yes, i do!!","no, i cant!!"))
print(unique(tolower(v2)))
v3 <- c(1,2,3,4,5,6,1,5,8,7,9,4,5,1,9,8,9,7,6,2,1,3,5,4)
print(unique(v3))

#12. 3 개의 정수를 가진 3 개의 벡터 a, b, c를 만드는 R 프로그램을 작성합니다. 세 벡터를 결합하여 각 열이 벡터를 나타내는 3x3 행렬이됩니다. 행렬의 내용을 인쇄합니다.
a <- c(1,2,3)
b <- c(2,3,4)
c <- c(5,6,7)

vm1<-cbind(a,b,c)
vm1


#13. 정규 분포에서 난수 목록을 만들고 각 값의 발생 횟수를 계산하는 R 프로그램을 작성합니다. 
n = floor(rnorm(1000, 50, 100))
print(n)
t = table(n)
print(t)


#14.csv 파일을 읽고 내용을 표시하는 R 프로그램을 작성합니다.
data = read.csv(".csv", header = T)



#15.R 프로그램을 작성하여 3 개의 벡터 숫자 데이터, 문자 데이터 및 논리 데이터를 만듭니다. 벡터의 내용과 유형을 표시합니다.
v4 <- c(1,2,3,4,5,6,7,8,9)
v5 <- c("a","b","c","d")
v6 <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)

typeof(v4)
typeof(v5)
typeof(v6)

#16. 레이블이있는 5 x 4 행렬 만들고, 3 X3 행으로 채우는 행렬을 만들고, 2 x 2 열로 채우는 행렬을 만들어라 R 프로그램을 작성하십시오.
m1 <- matrix(c(1:20), nrow = 5, ncol = 4)
m2 <- matrix(c(1:9), nrow = 3, ncol = 3, byrow = T)
m3 <- matrix(c(1:4), nrow = 2, ncol = 2, byrow = F)
m1
m2 
m3


#17. 배열을 만드는 R 프로그램을 작성하고 값 벡터와 차원 벡터를 전달합니다. 또한 각 차원의 이름을 제공하십시오. 
v7 <- c(1:16)
m4 <- array(v7, c(4,4,4))
colnames(m4) <- c("세로1","세로2","세로3","세로4")
rownames(m4) <- c("가로1","가로2","가로3","가로4")
m4


#18. 3 개의 열, 3 개의 행 ,2 개의 "테이블"이있는 배열을 만들고 배열에 대한 입력으로 2 개의 벡터를 사용합니다.
v8 <- c(10,20,30,40)
v9 <- c(50,40,70,80,90)
m5 <- array(c(v8,v9), dim = c(3, 3, 2))
m5

# 19. 벡터, 행렬 및 함수를 사용하여 요소 목록을 만드는 R 프로그램을 작성합니다.
l = list(c(1, 2, 2, 5, 7, 12),  month.abb,  matrix(c(3, -8, 1, -3), nrow = 2),  asin)
l

# 응용 
l2 = list(m5,m4,m3,m2,m1)
l2

# 20.빈 플롯을 그리는 R 프로그램을 작성하고 빈 플롯은 그래픽의 축 제한을 지정합니다.
plot(1, type="n", xlab="", ylab="", xlim=c(0, 20), ylim=c(0, 20))


# 21. R 프로그램을 작성하여 5 개의 과목 표시로 구성된 간단한 막대 그림을 만듭니다.
marks = c(70, 95, 80, 74)
barplot(soc,
        main = "Comparing marks of 5 subjects",
        xlab = "Marks",
        ylab = "Subject",
        names.arg = c("국어","영어","수학","과학","사회"),
        col = "yellow",
        horiz = FALSE)



# 22. R 프로그램을 작성하여 무작위 정규 분포의 종 곡선을 만듭니다. 
rn = floor(rnorm(10000, 500, 100))
t2 = table(rn)
barplot(t)


# 23. 주어진 벡터 요소의 합계, 평균 및 곱을 계산하는 R 프로그램을 작성하십시오.
v10 <- c(-15,1,21,8,7,5,4,-21,35456,487,5,13,84,62,98.1,584,8,12.7)
sum(v10)  #합계
mean(v10) #평균
prod(v10) #곱

# 24.문자, 숫자 및 논리 벡터를 포함하는 이기종 데이터 목록을 만듭니다.
my_list = list(Chr=v4, nums = v5, flag=v6)
my_list


# 25. 5 명의 직원의 세부 사항을 포함하고 세부 사항을 표시하는 Dataframe을 작성하십시오.
name2 <- c("김씨","이씨","박씨","최씨","유씨")
age2 <- c(32,34,35,23,37)
pnumber <- c("1234-5647","8875-6687","1548-2267","8879-8780","0548-1124") 
Designation <- c("Clerk","Manager","Exective","CEO","ASSISTANT")
single <- c("yes","no","no","yes","yes")

Employees = data.frame(name = name2 , age = age2, Designation =Designation, p_number = pnumber, single = single )
Employees

#27. 시간이 있거나없는 현재 날짜에 대한 시스템의 아이디어를 만드는 R 프로그램을 작성합니다
Sys.Date()
Sys.time()





