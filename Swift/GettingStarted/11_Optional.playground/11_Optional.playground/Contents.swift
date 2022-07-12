var str = "Hello"
str = "hi"
print(str)

//var str2
//str2 = "hi2" // 初始化若不給值，需宣告型態
//print(str2)

var str3 : String? // 同 Optional<String>
str3 = nil
if let newStr = str3 {
    print(newStr)
    print(type(of: newStr))
} else{
    print("str is nil.")
}



str3 = "hi3"
print(str3!)
print(type(of: str3!))

print("--區塊二--")

var c : String? = nil
var str4 : String!

str3 = c
print(c)

str4 = c
print(c)
