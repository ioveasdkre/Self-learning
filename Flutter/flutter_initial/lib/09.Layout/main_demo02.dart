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

// class建構子方法
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IconContainer(Icons.home, size: 16, color: Colors.blue);
  }
}

class IconContainer extends StatelessWidget {
  /// 圖標大小
  double size;
  /// 背景顏色
  Color color;
  /// 圖標
  IconData icon;

  // [] 可選參數
  // {} 命名可選參數
  /// 必要參數：
  /// * icon 圖標
  /// 
  /// 可選參數：
  /// * size 圖標大小
  /// * color 背景顏色
  IconContainer(this.icon, {this.size = 32, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100, // 高度
      width: 100, // 寬度
      color: this.color, // 顏色: 紅色
      child: Icon( // 圖標
        this.icon,
        size: this.size, // 圖標大小
        color: Colors.white // 顏色:
      ),
    );
  }
}
