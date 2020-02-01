iris <- read.csv("data_set/iris.csv", header = T)
iris

head(iris) # 상위 6개'
# dim(): 데이터 객체의 차원
dim(iris) # 행(150)과 열(6) 확인
# table(): 데이터 빈도 확인
table(iris$Species) # 그룹 확인


## 4개 열 데이터에 대한 데이터 분포 확인
# summary(): 중심화 경향 및 분포 요약
summary(iris[,2])
summary(iris[,3])
summary(iris[,"Petal.Length"])
summary(iris$Petal.Width)

# sd(): 표준편차
sd(iris[,1]) # Sepal.Length
sd(iris[,2]) # Sepal.Width
sd(iris[,3]) # Petal.Length // 데이터 편차가 큼!!
sd(iris[,4]) # Petal.Length


install.packages("Hmisc")
library(Hmisc)
update.packages()
## 각 열 데이터에 대해 그룹별 분포 확인
iris
par(mfrow = c(2, 2))
boxplot(Sepal.Length~Species, data = iris, # 열 데이터 입력
        main = "Sepal.Length")
boxplot(Sepal.Width~Species, data = iris, # 열 데이터 입력
        main = "Sepal.Width") # 열 데이터 제목 입력

boxplot(Petal.Length~Species, data = iris, # 열 데이터 입력
        main = "Petal.Length") # 열 데이터 제목 입력

boxplot(Petal.Length~Species, data = iris, # 열 데이터 입력
        main = "Petal.Width") # 열 데이터 제목 입력


## 각 열 데이터에 대해 그룹별 분포를 산점도를 통해 확인
point <- as.numeric(iris$Species)
color <- c("red","green","blue")
pairs(iris[,-5],      # 상관 분석을 위해 각 열 데이터 입력
      pch=c(point),   # 가시화를 위해 모양 설정
      col=color[iris[,5]]  # 가시화를 위해 색깔 설정
)


## 통계분석 넘 어렵다 정말!!!









