library(MASS)



### 다차원척도법
# 의미: 객체간 근접성을 시각화하는 통계기법

## 계량적 MDS(Metric MDS)
# 의미: 데이터가 구간척도 나 비율척도인 경우 활용

loc <- cmdscale(eurodist)
x <- loc[,1]
y <- loc[,2]
plot(x, y, type = "n", asp = 1, main = "Metric MDS")
# text() : 그래프에 문자열 추가
text(x, y, rownames(loc), cex = 0.7)
# abline() : 좌표에 직선을 그리는 함수
abline(v=0, h=0, lty=2, lwd=0.5)

## 비계량적 MDS(nonmetric MDS)
# 의미 : 데이터가 순서척도인 경우 활용용

data(swiss)
swiss.x <- as.matrix(swiss[, -1])
swiss.dist <-dist(swiss.x)
swiss.mds <- isoMDS(swiss.dist)
plot(swiss.mds$points, type = "n")
# text() : 그래프에 문자열 추가
text(swiss.mds$points, labels = as.character(1:nrow(swiss.x)))
# abline() : 좌표에 직선을 그리는 함수
abline(v = 0, h = 0, lty = 2, lwd = 0.5)








