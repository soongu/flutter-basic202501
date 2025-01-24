import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('다양한 텍스트 스타일'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              '큰 텍스트',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              '파란색과 기울임 텍스트',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              '밑줄이 있는 텍스트',
              style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationThickness: 2,
              ),
            ),
            Text(
              '취소선 텍스트',
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
