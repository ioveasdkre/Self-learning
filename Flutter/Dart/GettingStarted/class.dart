/*
class 類別名稱 {
   <類別欄位>
   <存取、設定子>
   <構造方法>
   <方法>
}

類別實體化
類別名稱 物件名稱 = new 類別建構子();
*/
import 'import/Animal.dart';
import 'import/Rect.dart';

void main() {
  Test();
  print('.....');
  Test2();
  print('.....');
  Test3();
  print('.....');
  Animal animal = new Animal('小狗', 3);
  //print(animal._name); // 私有屬性無法呼叫
  animal.getName(); // 方法內呼叫私有屬性
  //animal._run(); // 私有方法無法呼叫

  Rect rect = new Rect();
}

/**
 * [Role] 遊戲角色類別
 */
class Role {
  //===屬性===
  String nickName = ""; //遊戲暱稱
  String gender = ""; //性別
  String skill = ""; //技能

  //===方法===
  //走路
  void walk() {
    // todo sth...
    print("walk... ");
  }

  //快跑
  void run() {
    //todo sth...
    print("run... ");
  }

  //攻擊
  void hit() {
    //todo sth...
    print("hit... ");
  }

  // 使用資料模型儲存 nickName值
  void methis(nickName) {
    this.nickName = nickName;
    print(this.nickName);
  }
}

void Test() {
  //將類別實體化
  Role role = new Role();

  //呼叫類別中的方法
  role.methis('this.變數，呼叫外在變數');
  role.walk();
  role.run();
  role.hit();
}

void Test2() {
  //將 Role 類別實體化成 role，透過點的方式進行存取與呼叫
  Role role = new Role();

  //設定 Role 類別中的三個屬性值資料
  role.nickName = "殺很大";
  role.gender = "女生";
  role.skill = "天空飛行";

  print(role.nickName);
  print(role.gender);
  print(role.skill);
}

class DemoClass {
  int intVal = 0;

  // 建構子
  DemoClass() {
    intVal = -1;
  }
}

/**
 * 呼叫建構子
 */
void Test3() {
  //創建物件，使用無參數，構造方法
  DemoClass d1 = new DemoClass();
  print(d1.intVal);
}
