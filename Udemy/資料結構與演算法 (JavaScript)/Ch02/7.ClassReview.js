// #region Circle
// class
class Circle {
    // 建構子
    constructor(radius) {
        this.radius = radius;
    }
    getArea() {
        return Math.PI * this.radius * this.radius;
    }
}
// #endregion

let c1 = new Circle(5);
let c2 = new Circle(10);

console.log(c2.radius); // 輸出
console.log(c2.getArea()); // 輸出
