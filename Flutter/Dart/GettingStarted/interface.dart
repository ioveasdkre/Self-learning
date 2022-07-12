/*
實作接口語法
class 子類別 implements 介面類別名稱

class 子類別 implements 介面1,介面2,介面3...,介面X
*/

void main() {
  Child c = new Child();
  c.getInfo();

  print('.....');
  MyDoor mydoor = new MyDoor();
  mydoor.open();
  mydoor.close();
  mydoor.alert();
}

class Child implements Info {
  @override
  getInfo() {
    print('Child getInfo...');
  }
}

class Info {
  void getInfo() {
    print('getInfo...');
  }
}

// ....................................

//抽象類別
abstract class Door {
  void open();
  void close();
}

//介面
class Alert {
  void alert() {
    print('alert...');
  }
}

// MyDoor 繼承(extends) Door 抽象類別且實作(implements) Alert 介面
class MyDoor extends Door implements Alert {
  @override
  void open() {
    print('open');
  }

  @override
  void close() {
    print('close');
  }

  @override
  void alert() {
    print('alert');
  }
}
