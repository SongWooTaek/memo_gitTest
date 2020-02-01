install.packages('car')
library(car)
### 기술통계
## 관측한 데이터를 도표로 정리하거나 통계량(예:평균,표준편차,중위수
## 최빈값,그래프,왜도,첨도)으로 정리한것

# 데이터 확인
store.df <- read.csv("data_set/rintro-chapter3.csv", header = T)
store.df
head(store.df) # 데이터 앞 부분(6개)
tail(store.df) # 데이터 뒷 부분(6개)
str(store.df) # 데이터 구조 파악

# 데이터 요약
min(store.df$p1sales) # 최소값
max(store.df$p1sales) # 최대값
mean(store.df$p1sales) # 평균
median(store.df$p1sales) # 중앙값
var(store.df$p1sales) # 분산
sd(store.df$p1sales) # 표준편차
range(store.df$p1sales) # 범위
quantile(store.df$p1sales) # 사분위수
# quantile(변수, probs = 범위): 특정 범위를 지정해 줄 수 있음.
quantile(store.df$p1sales, probs = c(0.25, 0.75))
quantile(store.df$p1sales, probs = 1:10 / 10)
summary(store.df) # 최소값,사분위값,중앙값,평균,최대값
# apply(): 데이터 요약
# apply(dataframe, MARGIN = 1(가로)2(세로), FUN = 기능능)
apply(store.df[,2:9], MARGIN = 2, FUN = mean)


