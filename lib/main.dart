import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // 기본 배경색
            foregroundColor: Colors.white, // 기본 텍스트 색상
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('버튼 연습 앱'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, // 버튼을 가로 전체에 배치
            children: [
              // ElevatedButton
              ElevatedButton(
                onPressed: () {
                  print('[MY] ElevatedButton 클릭됨');
                },
                child: const Text('Elevated Button'),
              ),
              const SizedBox(height: 16), // 버튼 간 간격

              // TextButton
              TextButton(
                onPressed: () {
                  print('[MY] TextButton 클릭됨');
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                  padding: const EdgeInsets.all(16),
                ),
                child: const Text('Text Button'),
              ),
              const SizedBox(height: 16),

              // OutlinedButton
              OutlinedButton(
                onPressed: () {
                  print('[MY] OutlinedButton 클릭됨');
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.blue, width: 2),
                ),
                child: const Text('Outlined Button'),
              ),
              const SizedBox(height: 16),

              // IconButton
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      print('Favorite 아이콘 클릭됨');
                    },
                    icon: const Icon(Icons.favorite),
                    iconSize: 30,
                    color: Colors.red,
                  ),
                  const SizedBox(width: 16),
                  IconButton(
                    onPressed: () {
                      print('Search 아이콘 클릭됨');
                    },
                    icon: const Icon(Icons.search),
                    iconSize: 30,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
