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

// 垂直列表
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container( // 容器
      height: 180, // 高度
      child: ListView( // 列表元件
        scrollDirection: Axis.horizontal, // 滾動方向: 垂直
        children: <Widget>[ // 小元件
          Container( // 容器
            width: 180,
            color: Colors.yellow, // 顏色: 黃色
          ),
          Container( // 容器
            width: 180,
            color: Colors.blue, // 顏色: 藍色
            child: ListView( // 列表元件
              children: <Widget>[ // 小元件
                Image.network("https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a"), // 遠程圖片
                Text("我是一個文本") // 文本
              ]
            )
          ),
          Container( // 容器
            width: 180,
            color: Colors.red, // 顏色: 紅色
          ),
          Container( // 容器
            width: 180,
            color: Colors.orange, // 顏色: 橘色
          )
        ]
      )
    );
  }
}
