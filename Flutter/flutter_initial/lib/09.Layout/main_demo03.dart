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

// 水平布局
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 600, // 高度
      width: 400, // 寬度
      color: Colors.pink,
      child: Row( // 水平布局
        // mainAxisAlignment: MainAxisAlignment.center, // 主軸: 置中
        // mainAxisAlignment: MainAxisAlignment.end, // 主軸: 靠後
        // mainAxisAlignment: MainAxisAlignment.spaceAround, // 主軸: 元素間距離為 左右邊界距離的兩倍
        // mainAxisAlignment: MainAxisAlignment.spaceBetween, // 主軸: 左右邊界無間距
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主軸: 平均分布間距

        crossAxisAlignment: CrossAxisAlignment.start, // 次軸: 靠前
        // crossAxisAlignment: CrossAxisAlignment.end, // 次軸: 靠後
        // crossAxisAlignment: CrossAxisAlignment.stretch, // 次軸: 填滿
        children: <Widget>[ // 小元件
          IconContainer(Icons.safety_divider, color: Colors.blue),
          IconContainer(Icons.home, size: 10, color: Colors.orange),
          IconContainer(Icons.ac_unit, color: Colors.red)
        ],
      ),
    );
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
      child: Icon(
        // 圖標
        this.icon,
        size: this.size, // 圖標大小
        color: Colors.white // 顏色:
      ),
    );
  }
}
