import 'package:flutter/material.dart';

class RachaContaButton extends StatelessWidget {
  final VoidCallback aoPressionar;
  final String texto;

  const RachaContaButton({
    super.key,
    required this.aoPressionar,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: aoPressionar,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 2.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
      ),

      child: Text(
        texto,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
