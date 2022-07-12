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

// Card 圖片處理二(推薦的方式)
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 600, // 寬度
      width: 400, // 高度
      color: Colors.pink, // 顏色: 紅色
      padding: EdgeInsets.all(10), // 內距: 四邊
      child: Wrap(
        spacing: 10, // 水平間距
        runSpacing: 10, // 垂直間距
        direction: Axis.vertical, // 版面方向: 垂直
        // runAlignment: WrapAlignment.end, // 水平對齊: 靠後
        // runAlignment: WrapAlignment.spaceEvenly, // 水平對齊: 置中
        children: _buttonTotal(),
      ),
    ); // 容器
  }
}

/// 產生多個按鈕
List<Widget> _buttonTotal() {
  List<Widget> listwidget = <Widget>[]; // 儲存 List<Widget>

  for (int i = 0; i < 10; i++) {
    // for循環資料
    listwidget.add(MyButton("第${i + 1}季"));
  }
  return listwidget;
}

/// 按鈕樣板
class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      child: Text(this.text),
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(
          TextStyle(color: Colors.blue), // 顏色: 藍色
        ), // 文字風格
      ),
      onPressed: () {},
    );
  }
}
