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

// AspectRatio 基礎範例
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // 容器
      width: 200, // 寬度
      child: AspectRatio(
        aspectRatio: 2 / 1, // 寬高比例
        child: Container(
            // 容器
            color: Colors.blue // 顏色: 藍色
            ),
      ),
    );
  }
}
