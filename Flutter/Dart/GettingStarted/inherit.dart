/*
class  父類別名稱{
    // todo sth...
}

class 子類別名稱 extends 父類別名稱{
    // todo sth...
}

//父類別
class Animal{
    // late 變數初始化若不給值的時候使用
    late int weight; //體重
    late int age; //年齡
    int? test; // 變數初始化若不給值，但可空的設定
    
    //移動
    void move(){
         // todo sth...
    } 
}
//子類別
class Dog extends Animal{
     // todo sth...
}

//子類別
class Bird extends Animal{
    void fly(){
    
    }
}
 */

void main() {
  Animal animal = new Animal();
  animal.eat();

  Dog dog = new Dog();
  dog.eatTest();

  print('.....');
  C c = new C();
}

// super 和 this
class Animal {
  void eat() {
    print("Animal : eat");
  }
}

class Dog extends Animal {
  void eat() {
    print("Dog : eat");
  }

  void eatTest() {
    this.eat(); // this 呼叫自己的方法
    super.eat(); // super 呼叫父類別的方法
  }
}

// ...............

// 多層初始化
class A {
  A() {
    print("執行A構造方法...");
  }
}

class B extends A {
  B() {
    print("執行B構造方法...");
  }
}

class C extends B {
  C() {
    print("執行C構造方法...");
  }
}
