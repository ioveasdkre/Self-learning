// #region fun1 [利用迴圈加總]
/**
 * 利用迴圈加總
 * 1 + 2 + 3 + ... + n = sum
 * @param {int} n
 * @return {int}
 */
function fun1(n) {
    let sum = 0;
    for (let i = 1; i <= n; i++) {
        sum += i;
    }
    return sum;
}
// #endregion

// #region fun2 [利用等差公式 計算加總]
/**
 * 利用等差公式 計算加總
 * 1 + 2 + 3 + ... + n = sum
 * @param {int} n
 * @return {int}
 */
function fun2(n) {
    return ((1 + n) * n) / 2; // 回傳值
}
// #endregion

console.log(`fun1 ${fun1(10)}`);
console.log(`fun2 ${fun2(10)}`);

let time1 = window.performance.now(); // 計算執行時間(毫秒)
fun1(10000000);
let time2 = window.performance.now(); // 計算執行時間(毫秒)
let timeDiffl = (time2 - time1) / 1000; // 計算執行秒數 1000毫秒 = 1秒

console.log(`It takes ${timeDiffl} seconds to run fun1`); // 輸出 fun1 執行秒數

let time3 = window.performance.now(); // 計算執行時間(毫秒)
fun2(10000000);
let time4 = window.performance.now(); // 計算執行時間(毫秒)
let timeDiff2 = (time4 - time3) / 1000; // 計算執行秒數 1000毫秒 = 1秒

console.log(`It takes ${timeDiff2} seconds to run fun2`); // 輸出 fun2 執行秒數
