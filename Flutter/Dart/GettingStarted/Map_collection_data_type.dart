void main() {
  Test();
  print('-----');
  Test2();
  print('-----');
  Test3(Test());
}

/// Map 集合資料型態
// Iterable 稱為物件
Map<String, dynamic> Test() {
  var map = {'key1': 'value1', 'key2': 'value2', 'key3': 'value3'};

  print("map['key1'] ${map['key1']}");
  print("map['test'] ${map['test']}");

  map['key4'] = 'value4';

  print('map.length ${map.length}'); // 抓取長度
  print(
      "map.containsKey('value1') ${map.containsKey('value1')}"); // 尋找 key, 找到為true, 否則為 false
  print('map.entries ${map.entries}'); // 項目屬性
  print('map.values ${map.values}'); // 讀取所有 value

  return map;
}

/// Map 集合資料型態
void Test2() {
  //第一種宣吿方式
  var week1 = {
    'Monday': '星期一',
    'Tuesday': '星期二',
    'Wednesday': '星期三',
    'Thursday': '星期四',
    'Friday': '星期五',
    'Saturday': '星期六',
    'Sunday': '星期日',
  };

  print("week1['Sunday'] ${week1['Sunday']}"); //印出： 星期日

  //第二種宣吿方式
  var week2 = new Map();
  week2['Monday'] = '星期一';
  week2['Tuesday'] = '星期二';
  week2['Wednesday'] = '星期三';
  week2['Thursday'] = '星期四';
  week2['Friday'] = '星期五';
  week2['Saturday'] = '星期六';
  week2['Sunday'] = '星期日';

  //取值方式
  print("week2['Sunday'] ${week2['Sunday']}"); //印出： 星期日

  //更改資料值方式
  week2['Monday'] = 'xxx';
  print("week2['Monday'] ${week2['Monday']}"); //印出： xxx
}

/// forEach 循環，取出列表每一筆資料
void Test3(Map<String, dynamic> map) {
  map.forEach((key, value) {
    print("key: $key");
  });
}
