import 'package:flutter/material.dart';

class ImcTextField extends StatelessWidget {
  final TextEditingController entradaController;
  final String informacao;

  const ImcTextField({
    super.key,
    required this.entradaController,
    required this.informacao,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: entradaController,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: informacao,
        border: const OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      ),
    );
  }
}
