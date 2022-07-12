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
}

// 數字轉換字串
void Test() {
  String str = '123';
  var mynum = int.parse(str);
  print('mynum is int ${mynum is int}');
}

void Test2() {
  String str = '123.5';
  var mynum = double.parse(str);
  print('mynum is double ${mynum is double}');
}

// 字串轉換數字
void Test3() {
  int mynum = 12;
  String str = mynum.toString();
  print('str is String ${str is String}');
}

// 判斷字串是否為空
void Test4() {
  var str = '';
  if (str.isEmpty) {
    print('str.isEmpty 這是空的字串');
  } else {
    print('字串不為空');
  }
}

// 判斷數字 NaN
void Test5() {
  var mynum = 0 / 0;
  if (mynum.isNaN) {
    print('mynum.isNaN NaN');
  } else {
    print('正常的數字');
  }
}
