# 데이터 프레임
# 데이터 프레임: 구조가 행렬로 이루어진 리스트
# 예제
a <- data.frame("순번" = 1:3, "등급" = c("A", "B", "C"), "이름" = c("홍길동", "강감찬", "이순신"))
print(a)

# 레코드 생성
new <- data.frame(a=1, b=2, c=3, d="a")
print(new)

# 데이터 프레임 생성
cust_id <- c("c01", "c02", "c03", "c04")
last_name <- c("Kim", "Lee", "Choi", "Park")
cust_mart_1 <- data.frame(cust_id, last_name)
cust_mart_2 <- data.frame(cust_id = c("c05", "c06", "c07"),
                          last_name = c("Bae", "Kim", "Lim"))


# 데이터셋 행결합 : rbind(dfm1, dfm2)
cust_mart_12 <- rbind(cust_mart_1, cust_mart_2)

# 데이터셋 열결합 : cbind(dfm1, dfm2)
cust_mart_5 <- data.frame(age = c(20, 25, 19, 40, 32, 39, 28),
                          income = c(2500, 2700, 0, 7000, 3400, 3600, 2900))
cust_mart_125 <- cbind(cust_mart_12, cust_mart_5)



