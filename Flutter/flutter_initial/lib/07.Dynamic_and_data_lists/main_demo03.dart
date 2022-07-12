import 'package:flutter/material.dart'; // 控制元件庫
import '../data/listData.dart';

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
  var templist = ListData.map((value) { // 讀取 字典
    return ListTile(
      leading: Image.network(value["imageUrl"]), // 遠程圖片
      title: Text(value["title"]), // 文本
      subtitle: Text(value["author"]), // 第二標題
    );
  });

  return templist.toList(); // 轉換成 List
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
