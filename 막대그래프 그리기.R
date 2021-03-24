# R 프로그램을 작성하여 5 개의 과목 표시로 구성된 간단한 막대 그림을 만듭니다.


marks = c(70, 95, 80, 74)
barplot(marks,
        main = "Comparing marks of 5 subjects",
        xlab = "Marks",
        ylab = "Subject",
        names.arg = c("English", "Science", "Math.", "Hist."),
        col = "Lightpink",
        horiz = FALSE)

