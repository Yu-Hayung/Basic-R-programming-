# 고유벡터와 고유 수 출력하기 
# 주어진 문자열의 고유 한 요소와 벡터의 고유 한 수를 가져 오는 R 프로그램을 작성하십시오.
# unique() = 고유 인자 출력 

str1 = "The quick brown fox jumps over the lazy dog."
print("Original vector(string)")
print(str1)
print("Unique elements of the said vector:")
print(unique(tolower(str1)))
nums = c(1, 2, 2, 3, 4, 4, 5, 6)
print("Original vector(number)")
print(nums)
print("Unique elements of the said vector:")
print(unique(nums))

