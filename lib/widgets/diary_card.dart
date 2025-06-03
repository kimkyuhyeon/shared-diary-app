import 'package:flutter/material.dart';

class DiaryCard extends StatelessWidget {
  final String username;
  final String content;
  final String timestamp;

  const DiaryCard({
    super.key,
    required this.username,
    required this.content,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(username, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(content),
            const SizedBox(height: 8),
            Text(timestamp, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
