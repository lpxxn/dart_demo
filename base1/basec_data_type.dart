main() {
  var hi = 'Hi 🇩🇰';
  print(hi);

  double d1 = 1.1;
  double d2 = double.parse('123.1');
  print(d2);

  // string
  String s1 = 123.toString();
  print(s1);
  var s2 = 1223.122344.toStringAsFixed(2);
  print(s2);
  //
  object_test();
  const_test();

  bool b1 = 1 == '1';
  print(b1);

  print(haHa());
  var ma = makeAdder(2);
  print(ma(2));
}

void object_test() {
  Object o = 1;
  o = 'afdsadf 你好';
  print(o);
  o = 1223;
  print(o);

//
  dynamic d2 = 'good';
  Object o2 = 'hello';
  //print(d2.toStringAsFixed(2)); // 这个会在运行时报错，编译时不会报错 少用 dynamic
  // print(o2.length);// Object 是没有 length 的所以在编译时会报错
}

// const 是编译时常量，编译时就存在
// final 是在运行时才会申请内存
void const_test() {
  final c1 = 'hello world';
  const c2 = '你好';
}

String haHa() => '哈哈';

/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(num addBy) {
  return (num i) => addBy + i;
}

// /Users/lipeng/development/flutter/bin/cache/dart-sdk/bin/dart basec_data_type.dart
