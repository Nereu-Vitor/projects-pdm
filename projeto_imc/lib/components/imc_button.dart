import 'package:flutter/material.dart';

class ImcButton extends StatelessWidget {
  final VoidCallback funcao;
  final String texto;

  const ImcButton({super.key, required this.funcao, required this.texto});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: funcao,
      child: Text(texto, style: TextStyle(fontSize: 16)),
    );
  }
}
