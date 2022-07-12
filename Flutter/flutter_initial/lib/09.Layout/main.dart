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

// 彈性佈局
class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        // 小元件
        Row(
          children: <Widget>[
            // 小元件
            Expanded(
              child: Container(
                // 容器
                height: 180, // 高度
                color: Colors.black, // 顏色: 黑色
                child: Text("我是 列表"), // 孩子: 文本
              ),
            ),
          ],
        ),
        SizedBox(height: 10), // 盒子
        Row(
          children: <Widget>[
            // 小元件
            Expanded(
              // 彈性布局
              flex: 2, // 比例
              child: Container(
                // 容器
                height: 180, // 高度
                child: Image.network(
                    // 遠程圖片
                    "https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a",
                    fit: BoxFit.cover // 控制圖片大小與容器: 填滿，長寬百分比不變
                    ),
              ),
            ),
            SizedBox(width: 10), // 盒子
            Expanded(
              // 彈性布局
              flex: 1, // 比例
              child: Container(
                // 容器
                height: 180, // 高度
                child: ListView(
                  children: <Widget>[
                    // 小元件
                    Container(
                      // 容器
                      height: 85, // 高度
                      child: Image.network(
                          // 遠程圖片
                          "https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a",
                          fit: BoxFit.cover // 控制圖片大小與容器: 填滿，長寬百分比不變
                          ),
                    ),
                    SizedBox(height: 10), // 盒子
                    Container(
                      // 容器
                      height: 85, // 高度
                      child: Image.network(
                          // 遠程圖片
                          "https://s.yimg.com/ny/api/res/1.2/JlCMZ8Dclc8xP2wZL6bNdA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MDtoPTQ3NztjZj13ZWJw/https://s.yimg.com/uu/api/res/1.2/xvP72qKNCoReUDQjdbQH4g--~B/aD0zNzM7dz03NTE7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/newtalk.tw/91b70f76f74abc97b76cb48bc0b8594a",
                          fit: BoxFit.cover // 控制圖片大小與容器: 填滿，長寬百分比不變
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
