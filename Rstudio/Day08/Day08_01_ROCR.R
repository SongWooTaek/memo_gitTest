## R의 의사결정나무 분석 패키지
library(rpart)
library(party)
## ROCR 분석 패키지
library(ROCR)

# 함수 정리
# 1. nrow() : dataframe의 행의 수를 출력하는 함수
# 2. floor(x) : x보다 작거나 같은 정수
# 3. cforest() : 랜덤 포레스트 모델을 생성

x <- kyphosis[sample(1:nrow(kyphosis), nrow(kyphosis),replace = F),]
x.train <- kyphosis[1:floor(nrow(x) * 0.75),]
x.evaluate <- kyphosis[floor(nrow(x) * 0.75):nrow(x),]
x.model <- cforest(Kyphosis~Age+Number+Start, data = x.train)
x.evaluate$prediction <- predict(x.model, newdata = x.evaluate)
x.evaluate$correct  <- x.evaluate$prediction == x.evaluate$Kyphosis
print(paste("% of predicted classification correct",
            mean(x.evaluate$correct)))

x.evaluate$probabilities <- 1- unlist(treeresponse(x.model, newdata = x.evaluate),
          use.names = F)[seq(1, nrow(x.evaluate) * 2,2)]




