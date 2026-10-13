import 'package:flutter/material.dart';
import 'package:projeto_imc/components/imc_button.dart';
import 'package:projeto_imc/components/imc_textfield.dart';

import '/models/imc_calculadora.dart';
import '/pages/resultado_page.dart';

class ImcPage extends StatefulWidget {
  final String titulo;
  const ImcPage({super.key, required this.titulo});

  @override
  State<StatefulWidget> createState() => _ImcPageState();
}

class _ImcPageState extends State {
  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _alturaController = TextEditingController();

  String _mensagemErro = '';

  void _executarCalculo() {
    setState(() {
      _mensagemErro = '';
    });

    double? pesoConvertido = double.tryParse(
      _pesoController.text.replaceAll(',', '.'),
    );
    double? alturaConvertida = double.tryParse(
      _alturaController.text.replaceAll(',', '.'),
    );

    if (pesoConvertido == null || alturaConvertida == null) {
      setState(() {
        _mensagemErro = 'Por favor, digitar apenas números válidos!';
      });
      return;
    }

    var calculadora = ImcCalculadora(
      peso: pesoConvertido,
      altura: alturaConvertida,
    );

    String erro = calculadora.validar();
    if (erro.isNotEmpty) {
      setState(() {
        _mensagemErro = erro;
      });
      return;
    }

    double imcCalculadora = calculadora.calcularImc();
    String classificacao = calculadora.obterClassificacao(imcCalculadora);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultadoPage(
          imcCalculadora: imcCalculadora,
          classificacao: classificacao,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Calculadora de IMC',
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 2, 128, 160),
                ),
              ),
              SizedBox(height: 60),
              ImcTextField(
                entradaController: _pesoController,
                informacao: 'Peso (kg) - Ex: 70',
              ),
              SizedBox(height: 16),
              ImcTextField(
                entradaController: _alturaController,
                informacao: 'Altura (m) - Ex: 1.75',
              ),

              SizedBox(height: 16),
              ImcButton(funcao: _executarCalculo, texto: 'Calcular IMC'),

              SizedBox(height: 16),
              if (_mensagemErro.isNotEmpty)
                Text(
                  _mensagemErro,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
