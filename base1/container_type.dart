main() {
  list();
  map_test();
  String name = getName();
  print(name);


  print(add(1, 2));
  print(add(1, 3, 5));

  print(add2(1));
  print(add2(1, 4));
}

void list() {
  List l1 = [1, 2, 3];
  List l2 = new List();
  l2.add(1);
  l2.addAll([2, 3, 4]);
  print(l2);
  print(l2.length);
  print(l2.first);
  print(l2.last);
  print(l2[2]);

  l1.forEach((x){
      print("l1: " + x.toString());
  });
}

void map_test() {
  Map m1 = {'x': 1, 2: 3};
  print(m1);

  Map m2 = new Map();
  m2[1] = 'ab';
  m2['y']= 'cd';

  print(m2.containsKey(1));
  print(m2.containsKey('y'));
  print(m2.containsKey('xxxxy'));
}

String getName() {
  return 'zhang san';
}

// [] 可选参数
int add(int a1, int a2, [int a3]) {
  return a1 + a2 + (a3 == null ? 0 : a3);
}

// 默认值
int add2(int a1, [int a2 = 1]) {
  return a1 + a2;
}