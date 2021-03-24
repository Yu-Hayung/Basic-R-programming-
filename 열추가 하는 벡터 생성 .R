# 3 개의 정수로 3 개의 벡터 a, b, c를 생성하는 R 프로그램을 작성하십시오. 
# 세 벡터를 결합하여 각 열이 벡터를 나타내는 3x3 행렬이됩니다. 행렬의 내용을 인쇄합니다.


a<-c(1,2,3)
b<-c(4,5,6)
c<-c(7,8,9)
m<-cbind(a,b,c)
print("Content of the said matrix:")
print(m)