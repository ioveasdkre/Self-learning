void main() {
  Child c = new Child();
  c.makeMoney();
}

class Child extends Father {
  void makeMoney() {
    print('makeMoney...');
  }
}

/**
 * 抽象類別
 */
abstract class Father {
  void makeMoney();
}
