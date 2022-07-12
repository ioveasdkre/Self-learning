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
            appBar: AppBar( // 應用欄
                title: Text("flutter home") // 文本
                ),
            body: HomeCenter() // 主體
            ));
  }
}

class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center( // 組件
      child: Container( // 容器組件
        child: Text( // 文本
          "我是一個容器組件,我是一個容器組件,我是一個容器組件", // 內容
          textAlign: TextAlign.left, // 文本對齊: 左
          overflow: TextOverflow.ellipsis, // 行數處理: 不換行，顯示...
          maxLines: 2, // 最大行數
          textScaleFactor: 1.8, // 文字放大
          style: TextStyle( // 文字樣式
            fontSize: 16.0,
            // color: Colors.red,
            color: Color.fromARGB(177, 255, 0, 0), // 顏色:(紅, 綠, 藍, 透明度)
            fontWeight: FontWeight.w800, // 線條寬度
            fontStyle: FontStyle.italic, // 字體樣式: 傾斜
            decoration: TextDecoration.lineThrough, // 畫線: 中線
            decorationColor: Colors.white, // 畫線顏色: 白
            decorationStyle: TextDecorationStyle.dashed, // 畫線樣式: 虛線
            letterSpacing: 10.0, // 文字間距
          )
        ),
        height: 300.0, // 高度
        width: 300.0, // 寬度
        decoration: BoxDecoration( // 樣式組件
          color: Colors.yellow, // 背景顏色: 黃色
          border: Border.all( // 邊框樣式
            color: Colors.blue,
            width: 2.0 // 邊框寬度
          ),
          borderRadius: BorderRadius.all( // 邊界半徑
            Radius.circular(20), // 圓角
          )
        ),
        //padding: EdgeInsets.all(40), // 內距: 四邊
        //padding: EdgeInsets.fromLTRB(5, 10, 15, 20), // 內距: (左, 上, 右, 下)

        margin: EdgeInsets.fromLTRB(5, 10, 15, 20), // 外距: (左, 上, 右, 下)

        //transform: Matrix4.translationValues(100, 0, 0), // 矩陣(類似特效): (x, y, z)
        //transform: Matrix4.rotationZ(0.3), // 矩陣(類似特效): 旋轉 z軸
        //transform: Matrix4.skew(1, 2), // 矩陣(類似特效): 傾斜(x, y)
        transform: Matrix4.diagonal3Values(1.2, 1, 1), // 矩陣(類似特效): 縮放(x, y, z)

        alignment: Alignment.bottomLeft, // 對齊: 底部靠左
      )
    );
  }
}
