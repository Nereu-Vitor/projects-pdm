import 'package:flutter/material.dart';

class RachaContaTextField extends StatelessWidget {
  final TextEditingController entradaController;
  final String informacao;

  const RachaContaTextField({
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
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.grey[50],

        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      ),
    );
  }
}
