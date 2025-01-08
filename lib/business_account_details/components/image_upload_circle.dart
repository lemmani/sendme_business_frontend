import 'package:flutter/material.dart';

class ImageUploadCircle extends StatelessWidget {
  const ImageUploadCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        shape: BoxShape.circle,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.camera_alt_outlined,
            size: 40,
            color: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}