import 'package:flutter/material.dart';
import 'package:projeto_racha_conta/components/racha_conta_button.dart';

class ResultadoPage extends StatelessWidget {
  final double totalGeral;
  final double valorPessoa;
  final int qtdPessoas;
  final bool temGorjeta;

  const ResultadoPage({
    super.key,
    required this.totalGeral,
    required this.valorPessoa,
    required this.qtdPessoas,
    required this.temGorjeta,
  });

  String pegarMensagem() {
    String mensagem = 'Valor total com gorjeta';
    if (!temGorjeta) {
      mensagem = 'Valor total';
    }
    return mensagem;
  }

  @override
  Widget build(BuildContext context) {
    final String titulo = 'Resultado do Racha';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          titulo,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Icon(Icons.check_circle_outline, size: 80, color: Colors.green),
              const SizedBox(height: 20),

              const Text(
                'Cada pessoa deve pagar:',
                style: TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),

              Text(
                'R\$ ${valorPessoa.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),

              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        '${pegarMensagem()}: R\$ ${totalGeral.toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),

                      Text(
                        'Dividido igualmente entre $qtdPessoas',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),

                      RachaContaButton(
                        aoPressionar: () {
                          Navigator.pop(context);
                        },
                        texto: 'Calcular Nova Conta',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
