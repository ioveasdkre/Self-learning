import 'package:flutter/material.dart'; // 控制元件庫

void main() {
  runApp(MyApp());
}

// 自定義組建
// StatelessWidget 無狀態組件，不可變化 Widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center( // 組件
      child: Text( // 文本
        "您好 Benson",
        textDirection: TextDirection.ltr, // 文字方向: 左到右

        style: TextStyle( // 設定風格
          fontSize: 40.0, // 文字大小
          color: Colors.yellow, // 顏色: 顏色英文
          //color: Color.fromRGBO(244, 233, 213, 0.5) // 顏色: (紅, 綠, 藍, 透明度)
        ),
      )
    );
  }
}
