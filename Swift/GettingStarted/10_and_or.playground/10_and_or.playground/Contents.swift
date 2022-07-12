var flag = true && true // true
flag = true && false // false
flag = false && false // false
flag = false && true // false

flag = true || true // true
flag = true || false // true
flag = false || false // false
flag = false || true // true

print(flag)

print("--區塊二--")

let budget = 5000
let amount = 0
var discount = 0

if amount > 10000{
    discount = 1000
} else if amount > 5000{
    discount = 500
} else if amount > 3000{
    discount = 300
} else if amount > 1000{
    discount = 100
} else{
    discount = 0
}

var result = amount - discount
print("result: \(result)")

if (result == 0) || (budget >= result && discount > 0) {
    print("Buy !!!")
} else{
    print("Not Buy !!!")
}
