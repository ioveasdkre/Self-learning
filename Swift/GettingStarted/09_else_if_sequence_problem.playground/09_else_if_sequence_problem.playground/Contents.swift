let amount = 1110
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
