# 상자그림(BoxPlot)
# 의미: 다섯 숫자(최소값, Q1, Q2, Q3, 최대값)

x <- c(1,2,3,4,5,10)
boxplot(x)

# 여러 자료의 상자그림
x <- c(1:5)
y <- c(2:6)
z <- c(3:7)
boxplot(x,y,z,col = c("red","blue","gray"),
        main = "Title", xlab = "xname", ylab = "yname",
        xlim = c(0,5), ylim = c(0,10), names = c("x","y","z"))

# 참고(옵션)
# col : 색상 변경
# main : 제목 지정
# xlab : x축 이름
# ylab : y축 이름
# xlim : x값 범위
# ylim : y값 범위
# names : 각 데이터 이름
# boxwex : 상자 폭
# staplewex : 최솟값, 최댓값 선 길이
# outwex : 극단치 폭폭










