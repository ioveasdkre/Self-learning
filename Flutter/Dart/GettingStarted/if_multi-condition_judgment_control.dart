void main() {
  Test();
}

/// if 多條件判斷控制
void Test() {
  int intAVal = 100;
  int intBVal = 50;
  int intCVal = 100;

  if (intAVal >= intBVal) {
    print("若 intAVal，大於或等於 intBVal，則會印出此行");
  } else if (intAVal >= intCVal) {
    print("若 intAVal，大於或等於 intCVal，則會印出此行");
  } else {
    print("若 intAVal，沒有大於或等於 intBVal和intCVal，則會印出此行");
  }
}
