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
        centerTitle: true, // 중앙 정렬
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center, // 왼쪽 정렬
        children: [
          Text(
            '큰 텍스트',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            '중간 크기 텍스트',
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
          Text(
            '작은 텍스트',
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
        ],
      ),
    ));
  }
}
