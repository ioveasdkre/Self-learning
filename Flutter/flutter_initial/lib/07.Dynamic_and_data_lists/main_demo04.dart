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

// 循環式列表
class HomeCenter extends StatelessWidget {
  List list = [];

  HomeCenter() {
    for (int i = 0; i <= 20; i++) {
      // for循環資料
      this.list.add("我是第$i個，動態列表組件");
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        // 動態列表
        itemCount: this.list.length, // 循環數據的數量: 抓取長度
        itemBuilder: (context, index) {
          return ListTile(
              // 基礎列表
              title: Text(this.list[index]) // 一級標題
              );
        });
  }
}
