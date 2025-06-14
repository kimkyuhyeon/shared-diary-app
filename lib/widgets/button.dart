import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }
}