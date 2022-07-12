var flag = true
var t = type(of: flag)

print(flag)
print(t)

if true{
    print("if true: hi")
}

if false{
    print("if false: hi")
} else{
    print("else: false up")
}

print("--區塊二--")

var result = 10 > 3 // true
//var result = 10 < 3 // false
//var result = 10 == 3 // false
//var result = 10 >= 10 // true
//var result = 10 <= 11 false

if result{
    print("if flag: result")
} else{
    print("if flag: false")
}

print("--區塊三--")

var flag2 = !false // 相反

if flag2{
    print("hi")
} else{
    print("false!!!")
}

print("--區塊四--")

var money = 100
var foodPrice = 60

var canBuy = (money >= foodPrice)

if !canBuy{
    print("")
} else{
    //....
}

print("--區塊五--")

var numberOfItems = 28 //1565 // 行數
var itemOfPage = 14 // 一頁行數上限
var Page = numberOfItems / itemOfPage // 有幾頁

// 判斷第一頁
if numberOfItems == 0{
    Page = 1
} else{
    let remainder = numberOfItems % itemOfPage // 計算最後一頁有幾行
    
    // 判斷有餘數
    if remainder > 0{
        Page = Page + 1 // 計算頁數
    }
}

print("Number of pages: \(Page)")
