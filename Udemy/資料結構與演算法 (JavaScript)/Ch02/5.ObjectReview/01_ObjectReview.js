// Object 物件
let Harry = {
    name: "Harry Potter",
    age: 40,
    married: true,
    // 方法
    sayHI() {
        console.log("Harry says hi to you."); // 輸出
    },
};

console.log(Harry.name); // 輸出
console.log(Harry["name"]); // 輸出
Harry.sayHI(); // 輸出
