import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double progress;

  const ProgressBar({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.blue[100],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                minHeight: 8,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            '${(progress * 100).toInt()}%',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}