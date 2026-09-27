import 'package:flutter/material.dart';

class SecaoImagem extends StatelessWidget {
  const SecaoImagem({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}
