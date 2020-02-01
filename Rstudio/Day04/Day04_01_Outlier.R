install.packages("dplyr")
library(dplyr)
### 데이터 정제
## 이상치

#예제

#1. 이상치 데이터 생성
outlier <- data.frame(sex = c(1,2,1,3,2,1),
                      score = c(5,4,3,4,2,6))

#2. 이상치 데이터 확인
table(outlier$sex)
table(outlier$score)

#3. 결측 ㅊ처리
outlier$sex <- ifelse(outlier$sex == 3, NA, outlier$sex)
outlier$sex

outlier$score <- ifelse(outlier$score > 5, NA, outlier$score)
outlier$score

# 해당 문장 에러로 인해 예제 중단
# 다음에 다시하기
# outlier %>%
#         filter(!is.na(sex) & !is.na(score)) %>%
#         group_by(sex) %>%
#         summarise(mean_score ~ mean(score))





