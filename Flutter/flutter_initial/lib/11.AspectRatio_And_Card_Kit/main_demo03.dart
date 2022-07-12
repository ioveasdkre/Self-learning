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

// Card 基礎範例
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        // 小元件
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              // 小元件
              ListTile(
                title: Text(
                    // 本文
                    "我是 Card",
                    style: TextStyle(
                        // 字體風格
                        fontSize: 28 // 大小
                        )), // 一級標題
                subtitle: Text("我是二級標題"), // 二級標題
              ),
              ListTile(
                title: Text(
                  // 本文
                  "電話：0999-999 999",
                ), // 一級標題
              ),
              ListTile(
                  title: Text(
                // 本文
                "地址：xxx",
              )),
            ],
          ),
        )
      ],
    );
  }
}
