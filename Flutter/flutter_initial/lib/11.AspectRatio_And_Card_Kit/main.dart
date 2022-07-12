import 'package:flutter/material.dart'; // 控制元件庫
import "../data/listData.dart";

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

// Card 動態處理
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: ListData.map((value) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              // 小元件
              AspectRatio(
                aspectRatio: 20 / 9, // 寬高比例
                child: Image.network(value["imageUrl"],
                    fit: BoxFit.cover // 控制圖片大小與容器: 填滿，長寬百分比不變
                    ), // 遠程圖片
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value["imageUrl"]),
                ), // 圖形頭像
                title: Text(value["title"]), // 本文
                subtitle: Text(
                  value["author"],
                  overflow: TextOverflow.ellipsis, // 行數處理: 不換行，顯示...
                ), // 本文
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
