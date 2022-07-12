void main() {
  Test();
  print('-----');
  Test2();
  print('-----');
  Test3();
  print('-----');
  Test4();
  print('-----');
  Test5();
  print('-----');
  Test6();
  print('-----');
  Test7();
  print('-----');
  Test8();
  print('-----');
  Test9();
  print('-----');
  Test10(); // 需於 介面使用
}

/// 算數運算符號
void Test() {
  int a = 10;
  int b = 3;

  print('a + b = ${a + b}');
  print('a - b = ${a - b}');
  print('a * b = ${a * b}');
  print('a / b = ${a / b}');
  print('a % b = ${a % b}');
}

/// 進階的指定運算符號
void Test2() {
  int a = 10;
  int b = 2;

  print('a += b ${a += b}');
  print('a -= b ${a -= b}');
  print('a *= b ${a *= b}');
  print('a %= b ${a %= b}');
}

/// 因 /= 可能會產出有小數點的資料，若用 int 整數型態可能會導致錯誤，故使用 double
void Test3() {
  double a = 10;
  double b = 2;

  print('a /= b ${a /= b}');
}

/// 單元運算符號
void Test4() {
  int a = 10;

  print('a $a');
  print('-a ${-a}');
  print('a++ ${a++}'); // 先取出 a 的資料值後，才做 a=a+1 的動作
  print('a-- ${a--}'); // 先取出 a 的資料值後，才做 a=a-1 的動作
}

/// 遞增/遞減運算符號前綴和後綴差異
void Test5() {
  int a = 10;
  print('a++ ${a++}'); // 先取出 a 的資料值後，才做 a=a+1 的動作

  a = 10;
  print('++a ${++a}'); // 先作 a=a+1 運算的動作，再取出 a

  print('a-- ${a--}'); // 先取出 a 的資料值後，才做 a=a-1 的動作

  a = 10;
  print('--a ${--a}'); // 先作 a=a-1 運算的動作，再取出 a
}

/// 邏輯運算符號
void Test6() {
  bool a = true;
  bool b = false;

  print('a && b ${a && b}');
  print('a || b ${a || b}');
  print('!a ${!a}');
  print('!b ${!b}');
}

/// 關係運算符號
void Test7() {
  int a = 100;
  int b = 66;

  print('a == b ${a == b}');
  print('a != b ${a != b}');
  print('a > b ${a > b}');
  print('a < b ${a < b}');
  print('a >= b ${a >= b}');
  print('a <= b ${a <= b}');
}

/// 進階運算符號
///
/// 如果foo為null則返回null，否則返回bar成員
void Test8() {
  var foo;
  // print(foo.x); // 會拋出例外 exception
  print('foo ?.bar ${foo?.bar}'); // 防止資料 null拋出異常例外 exception
}

/// 進階運算符號
///
/// ?? 是否為空，賦值運算
void Test9() {
  //如果x是null，則賦值給x；
  //如果不是null，則x的值保持不變
  //x ??= value;
  var a = 100;
  var b;
  print('a ??= 77 ${a ??= 77}'); //輸出結果：100
  print('b ??= 66 ${b ??= 66}'); //輸出結果：66
}

/// 進階運算符號
///
/// … 級聯運算符號
void Test10() {
  /*
  原本標準寫法
  var button = querySelector('#button');
  button.text = 'Confirm';
  button.classes.add('important');
  button.onClick.listen((e) => window.alert('Confirmed!'));

  改成級聯運算寫法
  querySelector('#button') // 得到一個對象。
  ..text = 'Confirm'   // 使用它的成員。
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'));
  */
}
