# 계층적 군집방법

iris <- read.csv('data_set/iris.csv')
head(iris)


idx <- sample(1:dim(iris)[1], 40)
iris.s <- iris[idx,]
iris.s$Species <- NULL
hc <- hclust(dist(iris.s), method = "ave")
plot(hc, hang = -1, labels = iris$Species[idx])


## 참고
# sample() : 데이터에서 무작위로 샘플을 추출해주는 함수 / 복원, 비복원 추출이 있다.
# dist() : 거리를 계산하는 함수
# hclust() : 계층형 군집화 알고리즘

















