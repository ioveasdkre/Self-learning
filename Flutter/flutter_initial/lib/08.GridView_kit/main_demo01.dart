import 'package:flutter/material.dart'; // 控制元件庫

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
            // 框架
            appBar: AppBar(
                // 應用欄
                title: Text("flutter home") // 文本
                ),
            body: HomeCenter() // 主體
            ));
  }
}

class HomeCenter extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count( // 網格視圖
      crossAxisCount: 3, // 寬度格數
      children: <Widget>[ // 小元件
        Text("這是一個文本"),
        Text("這是一個文本"),
        Text("這是一個文本"),
        Text("這是一個文本"),
        Text("這是一個文本"),
        Text("這是一個文本"),
      ]
    );
  }
}
