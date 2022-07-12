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

// 圓角圖片方法一
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      // 容器
      height: 300, // 高度
      width: 300, // 寬度
      decoration: BoxDecoration(
          // 樣式組件
          color: Colors.yellow, // 背景顏色: 黃色

          // borderRadius: BorderRadius.all( // 邊界半徑
          //   Radius.circular(150) // 圓角
          // ),

          borderRadius: BorderRadius.circular(150), // 圓角
          image: DecorationImage(
              // 圖片: 遠程圖片
              image: NetworkImage(
                  "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png"),
              fit: BoxFit.cover // 控制圖片大小與容器: 長寬百分比不變
              )),
    ));
  }
}
