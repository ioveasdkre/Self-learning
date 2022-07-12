void main() {
  Test();
  print('-----');
  Test2(Test());
}

/// list 集合資料型態
List Test() {
  //宣告使用 List 資料結構
  var list1 = <String>[];

  //或直接宣告列表資料，透過中括號 [] 包覆一組集合資料，使用逗號來間隔下一筆資料
  var list2 = [10, 666, 168];
  var list3 = ["HKT", "線上教室"];

  //透過 add 方法將資料加到列表中
  list1.add('100');
  list1.add('66');

  //透過索引值指定資料到該列表中
  list1[1] = "333"; //此筆資料將會覆蓋掉之前寫入的 168 這筆資料，所以拿出此位置將會是 333

  List<dynamic> a = const [1, '123', true]; // const 把 list值固定，無法做任何增刪改
  print("a[1] ${a[1]}");
  //a.add(123); // error

  return list1;
}

/// for 循環，取出列表每一筆資料
void Test2(List list1) {
  //透過 for 循環
  for (int i = 0; i < list1.length; i++) {
    print('透過 for 循環 i: ${list1[i]}');
  }

  //透過 foreach 循環
  for (var i in list1) {
    print('透過 for 循環 i: $i');
  }

  //透過 foreach 循環
  list1.forEach((element) {
    print('透過 forEach 循環 element: $element');
  });
}
