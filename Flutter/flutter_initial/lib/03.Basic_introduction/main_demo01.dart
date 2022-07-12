import 'package:flutter/material.dart'; // 控制元件庫

void main() {
  runApp(Center( // 組件
    child: Text(
      "您好 Benson", // 文本
      textDirection: TextDirection.ltr, // 文字方向: 左到右
    )
  ));
}
