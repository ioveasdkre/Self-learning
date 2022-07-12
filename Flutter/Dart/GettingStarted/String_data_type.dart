void main() {
  Test();
  print('-----');
  Test2();
  print('-----');
  Test3();
  print('-----');
  Test4();
}

/// 資料值需置放在兩個雙引號內「" "」或單引號內「’ '」即為字串。
void Test() {
  String s1 = "123456789";
  String s2 = 'HKT線上教室';
  print("''和" '"" ' + s1);
}

/// 資料值需置放在兩個雙引號內「" "」或單引號內「’ '」即為字串。
void Test2() {
  // 三個單引號
  String s1 = '''
  HKT線上教室
  HKT線上教室
  HKT線上教室
  ''';

  // 使用三個單引號或是雙引號，可表示多行字串
  String s2 = """
  HKT線上教室
  HKT線上教室
  HKT線上教室
  """;
  print('"""多行輸入字串 \n' + s1);
}

/// 雙引號前缀一個 r 則會顯示最原始 raw 字串
void Test3() {
  //\n 換行字元
  String s1 = "HKT線上教室 \n HKT線上教室 \n HKT線上教室";
  print(s1);

  // 顯示 raw 字串
  String s2 = r"HKT線上教室 \n HKT線上教室 \n HKT線上教室";
  print(s2);
}

/// 數字與字串互相轉換
void Test4() {
  var intVal = int.parse('100'); //字串轉整數 (string to int)
  print("int.parse('100') $intVal");

  var doubleVal = double.parse('99.9'); //字串轉浮點數 (string to double)
  print("double.parse('99.9') $doubleVal");

  String strVal1 = 66.toString(); //整數轉字串 (int to string)
  print("66.toString() $strVal1");

  String strVal2 =
      3.14159.toStringAsFixed(2); //浮點數點轉字串，取道小數點後兩位 (double to string)
  print("3.14159.toStringAsFixed(2) $strVal2");
}
