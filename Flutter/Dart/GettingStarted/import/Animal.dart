class Animal {
  String _name = "小狗"; // 私有屬性
  int age;

  Animal(this._name, this.age);

  String getName() {
    return this._name;
  }

  void _run() {
    print('這是這是一個私有方法');
  }
}
