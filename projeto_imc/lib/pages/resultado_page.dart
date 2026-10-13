import 'package:flutter/material.dart';
import 'package:projeto_imc/components/imc_button.dart';

class ResultadoPage extends StatelessWidget {
  final double imcCalculadora;
  final String classificacao;

  const ResultadoPage({
    super.key,
    required this.imcCalculadora,
    required this.classificacao,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resultado do IMC')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'O seu IMC é:',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                imcCalculadora.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Classificação:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              Text(
                classificacao,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 2, 128, 160),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              ImcButton(
                funcao: () {
                  Navigator.pop(context);
                },
                texto: 'Calcular Novamente',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
