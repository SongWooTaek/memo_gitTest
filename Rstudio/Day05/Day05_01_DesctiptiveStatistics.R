# 기술통계
# 의미: 자료의 특성을 표,그림,통계량 등을 사용하여 쉽게 파악할
#       수 있도록 정리/요약한 것.

# 중심위치 척도
# 예제)

x = c(1:15)
y = c(62,55,32,42,55,35,110,64,54,66,58,62,58,26,16)
worker = data.frame(x, y)
worker
# 열 이름 변경 : names(worker) = c("직원", "시간")
data = worker$시간

mean(data) # 표본평균
median(data) # 중앙값 / 제2사분위수
var(data) # 분산
sd(data) # 표준편차
quantile(data) 
# 사분위수
# 0%   25%   50%   75%  100% 
# 16.0  38.5  55.0  62.0 110.0 
IQR(data) # 사분위수 범위(제3사분위수-제1사분위수)
# 변동계수(표준편차/표본평균)
sd(data) / mean(data)
# 평균의 표준오차 (표준편차 / 전체수)
sd(data) / sqrt(length(data))

# 히스토그램
# 파일 : 지역별 기상 데이터
weather <- read.csv('data_set/지역별 기상 데이터.csv')
weather
head(weather) # 데이터 상위 6개
tail(weather) # 데이터 하위 6개
nrow(weather) # 데이터 row 수 보기
summary(weather)
str(weather)

# weather의 평균기온 히스토그램
ahot <- weather$평균기온
histo <- hist(ahot)

hist(ahot, breaks = 24)
hist(ahot, breaks = seq(10,40,by = 1))

# 확률밀도 히스토그램(prob, freq)
hist(ahot, breaks = seq(10,40,by = 1), col = "grey", border = "white",
     prob = T, ylim = c(0,0.3))
hist(ahot, breaks = seq(10,40,by = 1), col = "grey", border = "white",
     freq = F, ylim = c(0,0.3))

# 확룰밀도 히스토그램의 라인 그리기(lines)
lines(density(ahot))



