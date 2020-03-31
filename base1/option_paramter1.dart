/*
1，大括号｛｝包围的。
特点：实现方法时，可以指定具体传递某一个参数。
2，中括号[]包围的。
特点，多个可选参数时，默认按照前后顺序传递。
共同点：必填的参数，必须要在可选参数的前面！
*/

main() {
  f1('大括号');
  f1('大排号', pwd: 'abcde');
  f1('大排号', name: 'name', pwd: 'abcde');
  fDefult('大排号');

  mf1('中括号', 'A');
  mf1('中括号', 'A', 'B');
  mf2();
  mf2('c', '1');
}

/**
 * 带有大括号的:传值比较明确.
 */
f1(var a, {String name, String pwd}) {
  print('a=$a name=$name pwd=$pwd');
}

/**
 * 默认参数值
 */
fDefult(String a, {String name = 'tom', String pwd = 'jerry'}) {
  print('a=$a name=$name pwd=$pwd');
}

/**
 * 中括号的:默认按照顺序
 */
mf1(var a, [String name = 'tom', String pwd]) {
  print('a=$a name=$name pwd=$pwd');
}

mf2([String name, String pwd]) {
  print('name=$name pwd=$pwd');
}
