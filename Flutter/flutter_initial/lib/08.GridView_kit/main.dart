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

// 自定義方法
Widget _getData(context, index) {
  return Container(
    child: Column(
      // 垂直佈局容器
      children: <Widget>[
        // 小元件
        Image.network(ListData[index]["imageUrl"]), // 遠程圖片
        SizedBox(height: 10), // 文字和圖片間距(高度)
        Text(
            // 文本
            ListData[index]["title"],
            textAlign: TextAlign.center, // 本文對齊: 置中
            style: TextStyle(
              fontSize: 20,
            )),
        // height: 300, // 高度，因在 GridView裡，故無反應
      ],
    ),
    decoration: BoxDecoration(
        // 樣式組件
        border: Border.all(
      // 邊框樣式
      //color: Colors.blue
      color: Color.fromARGB(255, 194, 25, 25), // 顏色: (紅色, 綠色, 藍色, 透明度)
      width: 2, // 邊框寬度
    )),
  );
}

// 動態式列表
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder( // 動態網格視圖
      // 注意 gridDelegate對應的方法
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10, // 元素間水平間距
        crossAxisSpacing: 10, // 元素間垂直間距
        crossAxisCount: 3, // 寬度格數
        childAspectRatio: 0.7, // 寬高比例
      ),
      itemCount: ListData.length, // 循環數據的數量
      itemBuilder: _getData,
    );
  }
}
