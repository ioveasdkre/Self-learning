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
    return ListView(
      children: <Widget>[
        // 小元件
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              // 小元件
              AspectRatio(
                aspectRatio: 20 / 9, // 寬高比例
                child: Image.network(
                    "https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a",
                    fit: BoxFit.cover // 控制圖片大小與容器: 填滿，長寬百分比不變
                    ), // 遠程圖片
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a"),
                ), // 圖形頭像
                title: Text("新狀冠病毒"), // 本文
                subtitle: Text("已突破四萬例"), // 本文
              )
            ],
          ),
        )
      ],
    );
  }
}
