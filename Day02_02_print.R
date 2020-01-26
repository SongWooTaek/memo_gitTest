## 특정 규칙에 맞게 문자열 출력하는 방법
#sprintf() : 주어진 인자들을 특정한 규칙에 맞게 문자열로 변환하여 출력
# - %d: 인자를 정수로 출력하는 방법
# - %f: 인자를 실수로 출력하는 방법
# - %s: 인자를 문자로 출력하는 방법
sprintf('%d', 123) # 숫자로 출력
sprintf('Number: %d', 123) # "Number:" 뒤 정수 출력
sprintf("Number: %d, String: %s", 123, "hello") # "String:" 뒤에 문자열 출력
sprintf("%.2f", 123.456) # 실수를 소수점 둘째 자리까지만 출력
sprintf("%5d", 123) # 숫자 5자리 고정
sprintf("%5d", 1234)
sprintf("%5d", 12345)
sprintf("%5d", 123456)
