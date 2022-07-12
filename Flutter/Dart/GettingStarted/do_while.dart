void main() {
  print('while');
  Test();
  print('do while');
  Test2();
  print('while 以及 do while的差別');
  Test3();
}

/**
 * while使用
 * while(表達式/循環條件){}
 */
void Test() {
  int i = 1;

  while (i <= 10) {
    print(i);
    i++;
  }
}

/**
 * do while使用
 * do{
 *    語句/循環體
 * }while(表達式/循環條件);
 */
void Test2() {
  int i = 1;

  do {
    print(i);
    i++;
  } while (i <= 10);
}

/**
 * while 以及 do while的差別
 */
void Test3() {
  int i = 10;

  while (i < 2) {
    print('while');
  }

  do {
    print('do while');
  } while (i < 2);
}
