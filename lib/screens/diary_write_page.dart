import 'package:flutter/material.dart';

class DiaryWritePage extends StatefulWidget {
  const DiaryWritePage({super.key});

  @override
  State<DiaryWritePage> createState() => _DiaryWritePageState();
}

class _DiaryWritePageState extends State<DiaryWritePage> {
  final TextEditingController _controller = TextEditingController();

  void _submitDiary() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    // TODO: 서버 저장 로직 or 리스트 추가 예정
    Navigator.pop(context); // 저장 후 이전 화면으로 돌아가기
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('일기 작성'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              '오늘 하루는 어땠나요?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: TextField(
                controller: _controller,
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  hintText: '여기에 자유롭게 작성해보세요 :)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: _submitDiary,
              icon: const Icon(Icons.send),
              label: const Text('저장하기'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
