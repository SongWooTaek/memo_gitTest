### Data Exploration (데이터 탐색)

# 예제파일(BUS_STATION_201912_1.csv 파일)
# 공공데이터(버스노선도)
data1 <- read.csv('data_set/BUS_STATION_201912_1.csv',header = T)
data2 <- subset(data1, select = c("사용일자", "노선ID",
                                  "노선번호","노선명"))
data3 <- subset(data1, select = c("사용일자","노선번호",
                                  "승차총승객수","하차총승객수"))
## head(), tail() 함수
## 광대한 데이터를 다룰 때 쓰는 함수

# head() 함수: DataFrame 내 처음 n줄의 데이터를 출력 (n=6)
head(data2)
head(data1, 2) # fruits 내 처음부터 2줄까지 데이터 출력

# tail() 함수: DataFrame 내 마지막 n줄의 데이터를 출력 (n=6) 
tail(data2)
tail(data2, 2) # fruits 내 마지막에서  2줄까지 데이터 출력

# summary 함수
# 기술통계 함수
# min(최소값), Median(중앙값), Mean(평균값), 3rd Qu(3분위 값), 
# Max(최대값)을 단 하나의 명령으로 빠르게 계산

fruits <- read.csv('data_set/fruits.csv', header = T)
fruits

summary(fruits$가격)
summary(fruits$남은수량)

## 참고
# 사분위: 1. 데이터 표본을 4개의 동일한 부분으로 나눈 값
#         2. 사분위를 활용하여 데이터 집합의 범위와 중심위치를
#            신속하게 평가할 수 있음

# 제1 사분위수(Q1): 데이터의 25%가 이 값보다 작거나 같음
# 제2 사분위수(Q2): 중위수 데이터의 50%가 이 값보다 작거나 같음
# 제3 사분위수(Q3): 데이터의 75%가 이 값보다 작거나 같음
# 제4 사분위수(Q4): 제1 사분위수 와 제3 사분위수 간의 거리(Q3-Q1)이므로,
#                   데이터의 중간 50%에 대한 범위입니다. 


# 분위수, 백분위수, 사분위수를 구하는 함수 - quantile( )
x <- c(1:75)
quantile(x)
quantile(x, probs = c(0.05, 0.1, 0.9, 0.95))

