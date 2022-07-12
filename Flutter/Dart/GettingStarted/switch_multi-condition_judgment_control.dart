void main() {
  Test();
}

/// switch 多條件判斷控制
void Test() {
  int intScore = 5;
  switch (intScore) {
    case 5:
      print("恭喜！獲得滿分五顆星");
      break;
    case 4:
      print("讚！讚！讚！獲得四顆榮耀星");
      break;
    case 3:
      print("可惜！再加油～～～");
      break;
    case 2:
      print("喔喔！相信自己可以的，多多努力");
      break;
    case 1:
      print("不敢相信你的分數只有一顆星");
      break;
    case 0:
      print("你真的有認真準備嗎？");
      break;
    default:
      print("資料異常！！！");
  }
}
