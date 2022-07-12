void main() {
  Voidsample();
  print('-----');
  var x = Stringsample();
  print(x);
  print('-----');
  parsample('HKT線上教室');
  print('-----');
  optionalsample('HKT線上教室');
  optionalsample();
  print('-----');
  setData(y: 66, x: 100);
  setData(y: 66);
  print('-----');
  int avgWind = 0; // average平均風速

  avgWind = 7;
  isCallOffSchoolAndWork(avgWind);

  avgWind = 4;
  isCallOffSchoolAndWork(avgWind);

  print('-----');
  (() {
    print('我是自動執行方法');
  })();

  print('-----');
  ((int n) {
    print('n');
    print('我是自動執行方法，請輸入參數');
  })(12);
}

/// void 開頭，表示無回傳值
void Voidsample() {
  print('void sample');
}

/// String 開頭，表示將會回傳字串資料值回去
String Stringsample() {
  return 'String sample';
}

/// 有參數的方法
void parsample(String x) {
  print('parameter ${x}');
}

/// 可選參數方法
void optionalsample([x]) {
  print('optional parameter ${x}');
}

/// 可選命名參數方法
void setData({int x = 0, int y = 0}) {
  print('x: $x , y: $y');
}

/**
 * 是否停班停課
 * @param avgWind 平均風速
 */
void isCallOffSchoolAndWork(int avgWind) {
  if (avgWind >= 7) {
    print('平均風速「已達」停班停課標準，\n請做好防颱準備。\n');
  } else {
    print('平均風速「未達」停班停課標準，\n早點睡請準時上班上課。\n');
  }
}
