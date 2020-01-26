# SQLDF 패키지
install.packages("sqldf")
library(sqldf)

Fruit <- c("Apples","Apples","Apples","Oranges","Bananas","Oranges","Bananas","Oranges","Bananas")
year <- c(2008,2009,2010,2008,2008,2009,2009,2010,2010)
Location <- c("West","West","West","East","East","East","East","East","East")
Sales <- c(98,111,89,96,85,93,94,98,81)
Expenses <- c(78,79,76,81,76,80,78,91,71)
Profit <- c(20,32,13,15,9,13,16,7,10)
Date <- c("2008-12-31","2009-12-31","2010-12-31",
          "2008-12-31","2008-12-31","2009-12-31",
          "2009-12-31","2010-12-31","2010-12-31")

Fruits <- data.frame(Fruit,year,Location,Sales,Expenses,Profit,Date)
print(Fruits)

# 데이터 조회
sqldf('SELECT * FROM Fruits') 

# Fruit=Apples 인 값들 조회
sqldf('SELECT * FROM Fruits WHERE Fruit = \'Apples\'') 

# 출력되는 행 수 제어
# limit
sqldf('SELECT * FROM Fruits limit 3')

# 정렬
# ORDER BY
sqldf('SELECT * FROM Fruits ORDER BY Year')

# 그룹함수
# SUM
sqldf('SELECT SUM(Sales) FROM Fruits')
# MAX
sqldf('SELECT MAX(Sales) FROM Fruits')
# MIN
sqldf('SELECT MIN(Sales) FROM Fruits')
# AVG
sqldf('SELECT AVG(Sales) FROM Fruits')
# Fruit, AVG(Sales) 조회
sqldf('SELECT Fruit, AVG(Sales) FROM Fruits GROUP BY Fruit')
# Fruit, SUM(Sales) 조회
sqldf('SELECT Fruit, SUM(Sales) FROM Fruits GROUP BY Fruit')
# COUNT
sqldf('SELECT COUNT(*) FROM Fruits')

# Sub Query
# 단일행
# 서브쿼리에서 1행만 리턴
sqldf('SELECT * 
        FROM Fruits 
        WHERE Sales > (SELECT Sales FROM Fruits WHERE expenses = 78)') 
# 다중행
# 서브쿼리에서 여러 행 리턴
sqldf('SELECT * 
        FROM Fruits 
        WHERE Sales IN (SELECT Sales FROM Fruits WHERE Sales > 95)')

# var2 변수의 값이 data 변수의 CA값과 일치할 경우 해당 CA값의 ID 값을 모두 출력
var1 <- matrix(c('가','라','사'))
var1

ca <- c('가','나','다','라','마','바','사')
lv <- c(3,7,11,31,49,78,43)
id <- c(3233,3789,4939,2336,4555,7888,9999)
data <- data.frame(CA=ca, LV=lv, ID=id)
data

var2 <- as.data.frame(var1)

sqldf('SELECT * FROM var2')
sqldf('SELECT ID 
        FROM data
        WHERE CA IN (SELECT * FROM var2)')

# JOIN
# 여러 테이블에 흩어져 있는 데이터 중에서 필요한 데이터만을
# 골라서 가져와 하나의 테이블처럼 만드는 기술

# INNER 조인
# 양쪽 테이블 모두에 데이터가 있는 경우 출력
name <- c('sandra Bullock', 'Jodie Foster', 'Meg Ryan', 'Demi Moore')
studno <- c(100,200,300,400)
profno <- c(1000,2000,3000,5000)
student <- data.frame(STUDNO = studno, NAME = name, PROFNO = profno)
student

name <- c('Winona Ryder', 'Michelle Pfeifer', 'Julia Roberts', 'James Seo')
profno <- c(1000,2000,3000,4000)
professor <- data.frame(PROFNO = profno, NAME = name)

# SELF JOIN
# 하나의 테이블에 원하는 데이터가 다 있을 경우
empno <- c(10,20,30,40,50)
ename <- c('JAMES', 'MILLER', 'FORD', 'STEVE', 'ALLEN')
pempno <- c(NA,10,20,20,30)
emp <- data.frame(empno = empno, ename = ename, pempno = pempno)
emp

sqldf('SELECT a.ename "사원이름", b.ename "상사이름"
        FROM emp a, emp b
        WHERE a.pempno = b.empno')


sqldf('SELECT a.ename "사원이름", b.ename "상사이름"
        FROM emp a
          JOIN emp b ON a.pempno = b.empno')


# 데이터 변경
# UPDATE
sqldf(c('UPDATE Fruits 
        SET Profit = 50 
          WHERE Fruit = \'Appels\' AND Year = 2008', 
          'SELECT * FROM Fruits'))


# 데이터 삭제
# DELETE
sqldf(c('DELETE FROM Fruits WHERE Fruit = "Apples"
        AND Year = 2008', 'SELECT * FROM Fruits'))






