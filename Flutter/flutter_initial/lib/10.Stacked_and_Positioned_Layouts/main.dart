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

// Stack與 Positioned組件
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      // 居中
      child: Container(
        // 容器
        height: 400, // 高度
        width: 300, // 寬度
        color: Colors.red, // 顏色: 紅色
        child: Stack(
          // 堆疊(重疊)
          // alignment: Alignment.center, // 對齊: 居中
          children: <Widget>[
            // 小元件
            Positioned(
              // 定位
              left: 10, // 左距離:
              child: Icon(
                Icons.home, // 圖標
                size: 40, // 大小
                color: Colors.white, // 顏色: 白色
              ),
            ),
            Positioned(
              // 定位
              bottom: 0, // 下距離
              left: 100, // 左距離:
              child: Icon(
                Icons.abc_sharp, // 圖標
                size: 30, // 大小
                color: Colors.white, // 顏色: 白色
              ),
            ),
            Positioned(
              // 距離
              right: 0, // 右邊距離
              child: Icon(
                Icons.backpack_outlined, // 圖標
                size: 60, // 大小
                color: Colors.white, // 顏色: 白色
              ),
            ),
          ],
        ),
      ),
    );
  }
}
