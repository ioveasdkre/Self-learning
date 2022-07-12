void main() {
  Test();
  print('-----');
  Test2();
  print('-----------');
  Test3();
}

/// Dart擁有int、double、String、bool等常見的變數型態
///
/// 在定義變數的時候你可以選擇給他明確的型態或是用「var」讓Dart來幫你決定
void Test() {
  /// var 自動給予合適的型態，使用 var宣告賦值後不可再給予其他型態的值
  var a = 1; //int 整數
  //a = '7'; // 不可給予其他型態的值
  var b = "1"; // String 字串
  var c = 1.1; // double 浮點數

  if (a is int) {
    // 判斷是否為 int型態
    print('a is int');
  }

  if (b is String) {
    // 判斷是否為 String型態
    print('b is String');
  }

  if (c is double) {
    // 判斷是否為 double型態
    print('c is double');
  }
}

void Test2() {
  // dynamic 是所有物件的基礎類型，也就是說它可以代表任何物件。
  // 與 JavaScript的「var」非常相似
  dynamic a = 1;
  a = '123';
  print(a);
}

void Test3() {
  // 一開始若未給予值，則宣告為 dynamic型態
  var a;
  a = 1;
  print(a);
  a = "123";
  print(a);
}
