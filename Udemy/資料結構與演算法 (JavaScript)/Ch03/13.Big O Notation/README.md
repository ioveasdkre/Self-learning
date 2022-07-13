1. n 不斷擴大的時候 f(n)成長趨勢
2. 要為最糟糕的情況做打算 當 n 越來越巨大的時候 f(n)的趨勢

Calculating Big O Value 計算最大 O 值

1. Constant doesn't matter 常數並不重要
   Constant 常數, 不會變的
   variable 變數, 會變化
   f(n) = 3n 3 是常數 n 是變數
   轉換 O(n) 3 為常數並不重要
2. Small Terms don't matter 小規則並不重要
   f(n) = 3n^2 + 6n + 4n^0 備註 ^ 為平方
   轉換 O(n^2) n^2 為最大, 3 為常數並不重要
3. Logarithm Base doesn't matter
   log_2^8
   轉換 f(n) = log_2^n
   轉換 O(logn)
