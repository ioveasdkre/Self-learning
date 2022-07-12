void main() {
  Test();
  print('-----');
  Test2();
}

void Test() {
  var list = [1, 2, 3];
  try {
    for (var i = 0; i <= list.length; i++) {
      print(list[i]);
    }
  } catch (error) {
    print(error);
  }
}

void Test2() {
  var list = [1, 2, 3];
  try {
    for (var i = 0; i <= list.length; i++) {
      print(list[i]);
    }
  } on RangeError catch (error) {
    print(error);
  }
}
