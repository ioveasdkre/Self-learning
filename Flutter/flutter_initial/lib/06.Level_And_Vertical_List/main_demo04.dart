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
        Image.network("https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a"), // 遠程圖片
        Container( // 容器
          child: Text( // 本文
            "我是一個標題",
            textAlign: TextAlign.center, // 文本對齊: 置中
            style: TextStyle( // 風格
              fontSize: 18 // 文字大小
            )
          ),
          height: 40, // 高度
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10), // 內距: (左, 上, 右, 下)
        ),
        Image.network("https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a"), // 遠程圖片
        Image.network("https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a") // 遠程圖片
      ],
    );
  }
}
