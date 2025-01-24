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
          title: const Text('기본 텍스트 연습'),
        ),
        body: const Center(
          child: Text(
            '포켓몬스터',
            style: TextStyle(
              fontSize: 24, // 글자 크기
              color: Colors.red, // 글자 색상
              fontWeight: FontWeight.bold, // 굵기 (보통)
              fontStyle: FontStyle.italic, // 기울임 없음
              decoration: TextDecoration.lineThrough, // 장식 없음
            ),
          ),
        ),
      ),
    );
  }

}
