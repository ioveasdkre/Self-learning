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

// Padding展示
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0), // 內距(左, 上, 右, 下)
      child: GridView.count( // 網格視圖
        crossAxisCount: 2, // 寬度格數
        childAspectRatio: 1.7, // 寬高比例
        children: <Widget>[
          Padding(
            // padding: EdgeInsets.all(10) // 內距 四邊
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0), // 內距(左, 上, 右, 下)
            child: Image.network(
              "https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a",
              fit: BoxFit.cover // 控制圖片大小與容器: 填滿，長寬百分比不變
              ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0), // 內距(左, 上, 右, 下)
            child: Image.network(
              "https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a",
              fit: BoxFit.cover // 控制圖片大小與容器: 填滿，長寬百分比不變
              ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0), // 內距(左, 上, 右, 下)
            child: Image.network(
              "https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a",
              fit: BoxFit.cover // 控制圖片大小與容器: 填滿，長寬百分比不變
              ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0), // 內距(左, 上, 右, 下)
            child: Image.network(
              "https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a",
              fit: BoxFit.cover // 控制圖片大小與容器: 填滿，長寬百分比不變
              ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0), // 內距(左, 上, 右, 下)
            child: Image.network(
              "https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a",
              fit: BoxFit.cover // 控制圖片大小與容器: 填滿，長寬百分比不變
              ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0), // 內距(左, 上, 右, 下)
            child: Image.network(
              "https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a",
              fit: BoxFit.cover // 控制圖片大小與容器: 填滿，長寬百分比不變
              ),
          ),
        ],
      )
    );
  }
}