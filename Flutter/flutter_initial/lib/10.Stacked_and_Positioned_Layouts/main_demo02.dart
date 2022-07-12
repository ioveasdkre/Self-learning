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

// Align組件
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      // 居中
      child: Stack(
        // 推疊(重疊)
        alignment: Alignment.bottomLeft, // 對齊: 底部左邊
        // alignment: Alignment(-1, 1), // 對齊: (x, y) -1 ~ 1 之間，陣列位置
        children: <Widget>[
          // 小元件
          Container(
            // 容器
            height: 400, // 高度
            width: 300, // 寬度
            color: Colors.red, // 顏色: 紅色
          ),
          Text("我是一個文本",
              style: TextStyle(
                // 文字風格
                fontSize: 40, // 大小
                color: Colors.white, // 顏色: 白色
              )), // 文本
        ],
      ),
    );
  }
}
