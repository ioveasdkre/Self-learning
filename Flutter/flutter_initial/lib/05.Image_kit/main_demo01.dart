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

class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container( // 容器
        child: Image.network( // 遠程圖片
          "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png",
          alignment: Alignment.topLeft, // 對齊: 頂部靠左

          // color: Colors.blue, // 圖片顏色: 藍色
          // colorBlendMode: BlendMode.screen, // 顏色混合模式

          // fit:BoxFit.cover // 控制圖片大小與容器: 長寬百分比不變
          // fit:BoxFit.fill // 圖片大小充滿容器: 不依照百分比
          // fit:BoxFit.fitWidth // 圖片大小充滿容器: 橫向(寬)充滿
          // fit:BoxFit.fitHeight // 圖片大小充滿容器: 縱向(高)充滿

          // repeat: ImageRepeat.repeatX, // 圖片平舖(多張撲滿容器): 橫向(寬)平鋪
          // repeat: ImageRepeat.repeatY, // 圖片平舖(多張撲滿容器): 縱向(高)平鋪
          repeat: ImageRepeat.repeat, // 圖片平舖(多張撲滿容器): 橫向(寬)、縱向(高)平鋪

        ),
        height: 300, // 高度
        width: 300, // 寬度
        decoration: BoxDecoration( // 樣式組件
          color: Colors.yellow, // 背景顏色: 黃色
        ),
      )
    );
  }
}
