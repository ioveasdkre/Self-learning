var number = 1
var result = 0

print("number: \(number)")

result = 1 + number + number
number = 2

print("number: \(number)")
print("result = 1 + number + number: \(result)")

print("--區塊二--")

let varNumber = 1 // 不能被改變
//varNumber = 2
print("varNumber: \(varNumber)")

print("--區塊三--")

var a = 5
//a++ // 已被廢去

a += 1 // 同等 a = a + 1
print("a +=1: \(a)")

a -= 1 // 同等 a = a - 1
print("a -=1: \(a)")

a *= 2 // 同等 a = a * 1
print("a *=2: \(a)")

a /= 2 // 同等 a = a / 1
print("a /=2: \(a)")

a %= 3 // 同等 a = a % 1
print("a %=3: \(a)")
