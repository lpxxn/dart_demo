main() async {
  f1();
  print('1-------');
  f2();

  sayHello2('hello2');
  var s2 = await say2('name s2');
  print(s2);  
  print('2-------');
s2 = await say3('name s3');
  print(s2);
}

void f1() {
  sayHello('f1'); // 这个会后执行
  print('f1 function');
}

f2() async {
  await sayHello('f2');
  print('in f2 function');
}

sayHello(String name) async {
  var data = await 'hello ' + name;
  print(data);
}

Future sayHello2(String name) async {
  var data = await 'hello ' + name;
  print(data);
}

say1(String name) async {
  var data = await 'hello: ' + name;
  return data;
}

Future<String> say2(String name) async {
  var data = await 'hello: ' + name;
  return data;
}

Future say3(String name) async {
  var data = await 'hello: ' + name;
  return data;
}
