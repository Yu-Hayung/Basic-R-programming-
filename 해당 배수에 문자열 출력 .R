# R 프로그램을 작성하여 1부터 100까지의 숫자를 인쇄하고 3의 배수에 대해 "Fizz"를 인쇄하고 
# 5의 배수에 대해 "Buzz"를 인쇄하고 둘 다의 배수에 대해 "FizzBuzz"를 인쇄하십시오.

# 해당 배수에 문자열 출력 

for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}