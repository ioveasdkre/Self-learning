// #region example [演算法分析]
/**
 * 演算法分析
 * f(n) = 3n + n平方 + 4 次的 "Hello"
 * f(n) 時間複雜度
 * n input size
 * @param {int} n
 * @return {int}
 */
function example(n) {
    let counter = 0;
    for (let i = 0; i < 3 * n; i++) {
        // console.log("Hello");
        counter++;
    }

    for (let i = 0; i < n; i++) {
        for (let j = 0; j < n; j++) {
            // console.log("Hello");
            counter++;
        }
    }

    // console.log("Hello");
    // console.log("Hello");
    // console.log("Hello");
    // console.log("Hello");
    counter += 4;

    return counter;
}
// #endregion

example(2); // 6 + 4 + 4 = 14 共執行 14次 Hello

for (let i = 2; i < 10; i++) {
    console.log(`example ${i} will print out ${example(i)} Hellos`);
}

console.log(example(100));
