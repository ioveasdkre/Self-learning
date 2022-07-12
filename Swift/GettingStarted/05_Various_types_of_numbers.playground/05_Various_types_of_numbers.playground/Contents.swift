var applePrice = 13
var quantity = 7
var appleTax = 1.08

var amount = applePrice * quantity
var final = Double(amount) * appleTax
//var final = Float(amount) * appleTax //會出現錯誤，因為型態不一樣，var 預設有點數點的數字為 Double


var floatTest = Float(1.2) * Float(1.3)
print("\(floatTest)")

print(399 / 100.0)
