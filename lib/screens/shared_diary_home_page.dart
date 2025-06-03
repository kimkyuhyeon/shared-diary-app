import 'package:flutter/material.dart';
import '../widgets/diary_card.dart';
import 'diary_write_page.dart';

class SharedDiaryHomePage extends StatelessWidget {
  const SharedDiaryHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('오픈 일기장'),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: const Icon(Icons.add_comment_rounded),
            onPressed: () {
              Navigator.pushNamed(context, '/write');
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          DiaryCard(
            username: "익명 사용자 1",
            content: "오늘은 유난히 외로운 하루였어요. 혼자 밥 먹는 게 너무 힘드네요...",
            timestamp: "2시간 전",
          ),
          DiaryCard(
            username: "익명 사용자 2",
            content: "엄마가 수술을 받으셨어요. 결과가 좋아서 너무 다행이에요.",
            timestamp: "5시간 전",
          ),
          DiaryCard(
            username: "익명 사용자 3",
            content: "회사 일로 멘붕 왔어요... 퇴사하고 싶은 생각이 하루에 열 번쯤은 드네요.",
            timestamp: "어제",
          ),
        ],
      ),
    );
  }
}