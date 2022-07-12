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

// 自定義方法
List<Widget> _getData() {
  List<Widget> listwidget = <Widget>[]; // 儲存 List<Widget>

  for (int i = 0; i <= 20; i++) { // for循環資料
    listwidget.add(Container( // 容器
      alignment: Alignment.center, // 對齊: 置中
      color: Colors.blue, // 顏色: 黃色
      child: Text( // 文本
        "第$i個，基礎列表演示",
        style: TextStyle( // 文字風格
          color: Colors.white, // 顏色: 白色
          fontSize: 20, // 字體大小
          // height: 300, // 高度，因在 GridView裡，故無反應
        )
      ),
    ));
  }
  return listwidget;
}

// 動態式列表
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count( // 網格視圖
      mainAxisSpacing: 20, // 元素間水平間距
      crossAxisSpacing: 20, // 元素間垂直間距
      padding: EdgeInsets.all(10), // 內距: 四邊
      crossAxisCount: 3, // 寬度格數
      childAspectRatio: 0.7, // 寬高比例
      children: _getData()
    );
  }
}
