import 'dart:io';

import 'lib1/lib1.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'dart:math' deferred as math;

main(List<String> args) async {
  print(hello('a'));
  var url = 'https://example.com/whatsit/create';
  var response =
      await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  print(await http.read('https://www.baidu.com'));

  math.loadLibrary();
  var r = math.Random();
  print(r.nextInt(10));

  response = await http.get('https://userrelations.meican.com');
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}'); 
}

/*
 pub.dev
https://pub.dev/packages/http#-installing-tab-

dependencies:
  http: ^0.12.0+4

You can install packages from the command line:

with pub:
$ pub get

在我的这个项目里用下面这个更好
with Flutter:
$ flutter pub get

*/
