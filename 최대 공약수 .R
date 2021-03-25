# 최대 공약수 구하기 

lgm = function(a, b) {
  while(b != 0) {
    c = a %% b
    a = b
    b = c
  }
  return (a)
}

lgm(40,50)

