import 'package:flutter/material.dart';
import 'screens/shared_diary_home_page.dart'; // 여기가 중요

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Diary',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const SharedDiaryHomePage(), // 🔥 여기만 바꾸면 됨
    );
  }
}
