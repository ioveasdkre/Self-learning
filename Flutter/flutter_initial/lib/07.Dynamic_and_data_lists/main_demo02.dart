import 'package:flutter/material.dart'; // 控制元件庫

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold( // 框架
          appBar: AppBar( // 應用欄
            title: Text("flutter home") // 文本
          ),
        body: HomeCenter() // 主體
      )
    );
  }
}

// 自定義方法
List<Widget> _getData() {
  List<Widget> listwidget = <Widget>[]; // 儲存 List<Widget>

  for (int i = 0; i <= 20; i++) { // for循環資料
    listwidget.add(ListTile( // 基礎列表
      title: Text("我是第$i個，動態列表組件") // 一級標題
    ));
  }
  return listwidget;
}

// 動態式列表
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      // 列表元件
      children: _getData(),
    );
  }
}
