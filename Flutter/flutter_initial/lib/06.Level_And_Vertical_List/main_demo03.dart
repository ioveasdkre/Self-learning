import 'package:flutter/material.dart'; // 控制元件庫

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold( // 框架
          appBar: AppBar( // 應用欄
            title: Text("flutter home") // 文本
          ),
        body: HomeCenter() // 主體
      )
    );
  }
}

// ListView 預設水平列表
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView( // 列表元件
      padding: EdgeInsets.all(10), // 內距: 四邊
      children: <Widget>[ // 小元件
        ListTile( // 基礎列表
          leading: Image.network("https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png"),// 前面: 遠程圖片
          title: Text( // 一級標題
            "title 一級標題",
            style: TextStyle( // 風格
              fontSize: 24 // 文字大小
            )
          ),
          subtitle: Text("subtitle 二級標題") // 二級標題
        ),
        ListTile( // 基礎列表
          trailing: Image.network("https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png"),// 後面: 遠程圖片
          title: Text( // 一級標題
            "title 一級標題",
            style: TextStyle( // 風格
              fontSize: 24 // 文字大小
            )
          ),
          subtitle: Text("subtitle 二級標題") // 二級標題
        ),
        ListTile( // 基礎列表
          leading: Image.network("https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png"),// 前面: 遠程圖片
          trailing: Image.network("https://s.yimg.com/cv/apiv2/twfrontpage/logo/Yahoo-TW-desktop-FP@2x.png"),// 後面: 遠程圖片
          title: Text( // 一級標題
            "title 一級標題",
            style: TextStyle( // 風格
              fontSize: 24 // 文字大小
            )
          ),
          subtitle: Text("subtitle 二級標題") // 二級標題
        ),
      ],
    );
  }
}
