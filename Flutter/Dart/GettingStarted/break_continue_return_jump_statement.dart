void main() {
  Test();
  print('-----');
  Test2();
  print('-----');

  var intArr1 = null;
  //Test3(intArr1); // 註解掉此句，會在編譯時就報錯(傳錯誤的參數)

  var intArr2 = [1, 2, 3, 4, 5];
  Test3(intArr2);
}

/// break 跳轉語句
void Test() {
  var intArr = [1, 2, 3, 4, 5];

  for (final i in intArr) {
    if (i == 3) {
      break;
    }
    print('break $i');
  }
}

/// continue 跳轉語句
void Test2() {
  var intArr = [1, 2, 3, 4, 5];

  for (var i in intArr) {
    if (i == 3) {
      continue;
    }
    print('continue $i');
  }
}

/// return 跳轉語句
void Test3(List intArr) {
  if (intArr == null) {
    print("資料異常");
    return;
  }

  for (var i in intArr) {
    print(i);
  }
}
