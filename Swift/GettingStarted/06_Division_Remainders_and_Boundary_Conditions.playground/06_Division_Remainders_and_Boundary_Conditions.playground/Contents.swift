var number = 12 / 3
var noDecimals = 13 / 3 // 皆為整數，計算結果整數
var withDecimals = 13.0 / 3 // 任一數有小數，計算結果有小數

print("12 / 3: \(number)")
print("13 / 3: \(noDecimals)")
print("13.0 / 3: \(withDecimals)")
print("-----")

var result = type(of: number)
var result2 = type(of: withDecimals)
print("type(of: number): \(result)")
print("type(of: withDecimals): \(result2)")
print("-----")

// 錯誤公式示範
//var numberOfItems = 1 //1565 // 行數
//var itemOfPage = 14 // 一頁行數上限
//var numberOfPage = numberOfItems / itemOfPage // 有幾頁
//print("Number of pages: \(numberOfPage)") // 14 / 1 = 0 需要注意的地方

// 未完成，請參照下一頁筆記
var numberOfItems = 15 //1565 // 行數
var itemOfPage = 14 // 一頁行數上限
var numberOfPage = numberOfItems / itemOfPage // 有幾頁
var remainder = numberOfItems % itemOfPage

// 判斷有餘數
if(remainder > 0){
    numberOfPage = numberOfPage + 1 // 計算頁數
}

print("Number of pages: \(numberOfPage)") // 1 / 14 = 0 需要注意的地方
