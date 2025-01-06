import 'package:flutter/material.dart';

class SuccessDialog extends StatelessWidget {
  final VoidCallback onQueueTap;
  final VoidCallback onDispatchTap;

  const SuccessDialog({
    Key? key,
    required this.onQueueTap,
    required this.onDispatchTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SuccessIcon(),
            const SizedBox(height: 16),
            const SuccessText(),
            const SizedBox(height: 24),
            ActionButtons(
              onQueueTap: onQueueTap,
              onDispatchTap: onDispatchTap,
            ),
          ],
        ),
      ),
    );
  }
}

class SuccessIcon extends StatelessWidget {
  const SuccessIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: const BoxDecoration(
        color: Color(0xFF4CAF50),
        shape: BoxShape.circle,
      ),
      child: const Icon(
        Icons.check,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}

class SuccessText extends StatelessWidget {
  const SuccessText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Order Added Successful',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.blue,
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  final VoidCallback onQueueTap;
  final VoidCallback onDispatchTap;

  const ActionButtons({
    Key? key,
    required this.onQueueTap,
    required this.onDispatchTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: onQueueTap,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.blue),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            child: const Text(
              'Go to Queue',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: ElevatedButton(
            onPressed: onDispatchTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
            ),
            child: const Text(
              'Dispatch Now',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}