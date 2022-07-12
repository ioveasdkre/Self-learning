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

// 本地圖片
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container( // 容器
        child: Image.asset( // 本地圖片
            "images/Yahoo.png",
            height: 300, // 高度
            width: 300, // 寬度
            fit:BoxFit.cover // 控制圖片大小與容器: 長寬百分比不變
        )
      )
    );
  }
}
