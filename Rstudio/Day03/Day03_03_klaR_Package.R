## 변수 중요도
# 의미: 개발 중인 모델에 준비된 데이터를 기준으로 한 번에
#       여러 개의 변수를 평가하는 방식

# 평가 방법
# 1. 패키지를 이용한 평가
# 2. 모델링 결과 평가

install.packages('klaR')
library(klaR)

head(iris)
iris2 <- iris[ , c(1,3,5)]
head(iris2)

## plineplot(Species ~ ., data = iris2, method = "lda", x = iris[ , 4], xlab = "Petal.Width")

# 모든 변수를 기준으로 구간 분석
m <- NaiveBayes(Species ~ ., data = iris)
plot(m)


# 변수의 구간화
# 의미: 데이터 분석의 성능을 향상시키기 위해서 혹은 해석의 편리성을
#       위해 이산형 변수를 범주형 벼수로 변환

# 참고) 이산형(discrete): 변수가 취할 수 있는 값을 하나하나 셀수 있는 경우
#       연속형(continuous): 변수가 구간 안의 모든 값을 가질 수 있는 경우




















