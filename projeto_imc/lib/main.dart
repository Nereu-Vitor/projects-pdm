import 'package:flutter/material.dart';
import 'pages/imc_page.dart';

void main() {
  runApp(const CalculadoraIMC());
}

class CalculadoraIMC extends StatelessWidget {
  const CalculadoraIMC({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo = 'Calculadora de IMC';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const ImcPage(titulo: titulo),
    );
  }
}
