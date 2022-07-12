void main() {
  Test();
  print('-----');
  Test2();
}

/// for 循環控制
void Test() {
  for (int i = 0; i < 10; i++) {
    print('for i: $i');
  }
}

/// foreach 迴圈
void Test2() {
  var intArr = [10, 20, 5, 3, 100];

  // for(資料型態 迴圈控制變數 in 集合或陣列資料)
  for (var i in intArr) {
    print('foreach $i');
  }
}
