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
  Widget _getListData(context, index) {
    // 自定義方法
    return ListTile(
      // 基礎列表
      leading: Image.network(ListData[index]["imageUrl"]), // 遠程圖片
      title: Text(ListData[index]["title"]), // 文本
      subtitle: Text(ListData[index]["author"]), // 第二標題
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: ListData.length, // 數量: 抓取長度
        itemBuilder: this._getListData);
  }
}
