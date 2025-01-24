import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key}); // 부모 클래스의 Key를 전달받아 위젯 트리에 전달.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('flutter Text 연습'),
      ),
      body: Center(
        child: Text(
          '안냐세요 티니핑~',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    ));
  }
}
