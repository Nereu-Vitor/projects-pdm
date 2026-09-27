import 'package:flutter/material.dart';

class SecaoTexto extends StatelessWidget {
  const SecaoTexto({super.key, required this.descricao});

  final String descricao;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(descricao, softWrap: true),
    );
  }
}
