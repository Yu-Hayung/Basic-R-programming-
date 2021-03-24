# 2차원 2면 벡터를 생성후 각차원, 칼럼 모두 이름을 넣어라 

a =  array(
  6:30,
  dim = c(4, 3, 2),
  dimnames = list(
    c("Col1", "Col2", "Col3", "Col4"),
    c("Row1", "Row2", "Row3"),
    c("Part1", "Part2")
  )
)
print(a)
