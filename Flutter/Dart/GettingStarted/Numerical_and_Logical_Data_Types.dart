void main() {
  Test();
  print('-----');
  Test2();
  print('-----');
  Test3();
}

/// 整數資料，範圍介於 -2^53 和 2^53 之間。
void Test() {
  var x = 1;
  var h = 0xFFFFFF;
  var i = 123456789999;
  print(x);
  print(h);
  print(i);
}

/// 64-bit 雙精度浮點數
///
/// 最大值：double.maxFinite (1.7976931348623157e+308)
///
/// 最小值：double.minPositive (5e-324)
void Test2() {
  var y = 1.1;
  var e = 1.42e5;
  print(y);
  print(e);
}

/// 邏輯資料 bool
void Test3() {
  var x = (true || false);
  print(x); //印出 true

  var y = (true && false);
  print(y); //印出 false
}
