# 상관분석(Correlation Analysis)
# 의미: 두 변수 간의 관계의 정도를 알아보기 위한 분석방법
df <- read.csv('data_set/놀이동산.csv')
str(df)
colSums(is.na(df)) # 결측값 확인

# 1.산점도(Scatter plot)
# 의미: 좌표평면 위에 점들로 표현한 그래프
# 참고(옵션)
# main : main 제목 입력 (ex: main = "Overall ~ Rides")
# xlab : x 축 레이블 입력 (ex: xlab = "Satisfaction with Rides")
# ylab : y 축 레이블 입력 (ex: ylab = "Overall Satisfaction")
# cex : 출력되는 점들의 크기 결정 (ex: cex = 1)
# pch : 출력되는 점의 형태(ex: pch = 1)
# col : 색상 지정(ex: col = 'red')
attach(df)
plot(overall ~ rides) # 양의 관계계
plot(overall ~ rides, main = "Overall ~ Rides",
     xlab = "Satisfaction with Rides",
     ylab = "Overall Satisfaction",
     cex = 1,
     pch = 1,
     col = 'red')

# 2.공분산
# 의미: 두 확률변수 X,Y의 방향의 조합
cov(overall, rides)

# 3.상관계수
# 의미: 두 변수 간의 선형관계의 강도
# cor() 함수
# 참고
# use : 결측ㄱ값을 모두 제거된 상태에서 상관계수를 계산
# met
cor(overall,rides,use = 'complete.obs', method = 'pearson')












