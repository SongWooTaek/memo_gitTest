# 데이터 정제
# 결측값 인식
x <- c(1,2,3,4,NA,6,7,8,9,NA)
is.na(x) # NA 값 2개
sum(is.na(x)) # 결측값 총 개수

# 통계 분석 시 결측값 제외
x <- c(1,2,3,4,5,6,7,8,9,10)
y <- c('가','나','다','라','마','바','사','아','자','차')
z <- c(10,20,NA,40,NA,60,70,NA,90,100)

d1 <- data.frame(x,y,z)
sum(d1$z) # NA
mean(d1$z) # Na
sum(d1$z, na.rm = TRUE) # 390
mean(d1$z, na.rm = TRUE) # 55.71429
