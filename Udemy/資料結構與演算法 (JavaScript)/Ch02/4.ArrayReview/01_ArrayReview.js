// array 陣列
let arr = ["Harry", "Ron", "Snap"];

// 迴圈撈取陣列
for (let i = 0; i < arr.length; i++) {
    console.log(arr[i]); // 輸出
    console.log(i); // 輸出
}

// forEach (自訂參數名稱 此參數為陣列中的值, 自訂參數名稱 此參數為 陣列中第幾位)
arr.forEach((person, index) => {
    console.log(person); // 輸出
    console.log(index); // 輸出
});
