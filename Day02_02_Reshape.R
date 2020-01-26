# Reshape 패키지
install.packages("reshape")
library(reshape)

# 예제 파일 만들기
no <- c(1,1,2,2)
day <- c(1,2,1,2)
A1 <- c(40,30,50,25)
A2 <- c(70,55,80,45)
mydata <- data.frame(no,day,A1,A2)
mydata

## melt() 함수
# melt() : 원데이터 형태로 만드는 함수
# 데이터 프레임을 다룰때 데이터 구조를 행의 키값을 
# 기준으로 나머지를 변수화 하여 담아버리것

MD <- melt(mydata, id = c("no", "day"))
MD

## cast() 함수
# cast() : 요약 형태로 만드는 함수
# 데이터를 원하는 형태로 계산 또는 변형 시켜주는 함수
NV <- cast(MD, no ~ variable, mean) # no ~ variable 평균
DV <- cast(MD, day ~ variable, mean) # day ~ variable 평균
ND <- cast(MD, no ~ day, mean) # no ~ day 평균


NDV1 <- cast(MD, no + day ~ variable)
NDV2 <- cast(MD, no + day ~ variable)
NDV3 <- cast(MD, no + variable ~ day)
NDV4 <- cast(MD, no ~ variable + day)





