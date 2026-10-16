import 'package:flutter/material.dart';

import '/pages/resultado_page.dart';

import '/components/racha_conta_button.dart';
import '/models/racha_conta.dart';

import '/components/racha_conta_textfield.dart';

class RachaContaPage extends StatefulWidget {
  final String titulo;
  const RachaContaPage({super.key, required this.titulo});

  @override
  State<StatefulWidget> createState() => _RachaContaPageState();
}

class _RachaContaPageState extends State {
  final TextEditingController _valorController = TextEditingController();
  final TextEditingController _pessoasController = TextEditingController();
  final TextEditingController _gorjetaController = TextEditingController();

  String _mensagemErro = '';

  void _calcularDivisao() {
    setState(() {
      _mensagemErro = '';
    });

    double? valor = double.tryParse(_valorController.text.replaceAll(',', '.'));
    int? pessoas = int.tryParse(_pessoasController.text.replaceAll(',', '.'));
    double? gorjeta =
        double.tryParse(_gorjetaController.text.replaceAll(',', '.')) ?? 0.0;

    if (valor == null || pessoas == null) {
      _mensagemErro = 'Por favor, preencha os campos com números válidos.';
      return;
    }

    if (gorjeta <= 0.0) {
      setState(() {});
    }

    var racha = RachaConta(
      valorConta: valor,
      qtdPessoas: pessoas,
      porcentagemGorjeta: gorjeta,
    );

    String? erro = racha.validar();
    if (erro != null) {
      setState(() {
        _mensagemErro = erro;
        return;
      });
    }

    double totalGeral = racha.calcularTotalComGorjeta();
    double valorPessoa = racha.calcularPorPessoa();

    bool temGorjeta = gorjeta != 0.0;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultadoPage(
          totalGeral: totalGeral,
          valorPessoa: valorPessoa,
          qtdPessoas: pessoas,
          temGorjeta: temGorjeta,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final String titulo = 'Racha Conta Inteligente';

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
          constraints: const BoxConstraints(maxWidth: 400),
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const Text(
                'Divida a conta do passeio sem estresse!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 28),

              RachaContaTextField(
                entradaController: _valorController,
                informacao: 'Total da Conta (R\$) - Ex: 50,55',
              ),
              const SizedBox(height: 28),

              RachaContaTextField(
                entradaController: _pessoasController,
                informacao: 'Número de pessoas - Ex: 4',
              ),
              const SizedBox(height: 28),

              RachaContaTextField(
                entradaController: _gorjetaController,
                informacao: 'Porcentagem da Gorjeta (%) [Opcional]',
              ),
              const SizedBox(height: 70),

              RachaContaButton(
                aoPressionar: _calcularDivisao,
                texto: 'Calcular Divisão',
              ),
              const SizedBox(height: 16),

              if (_mensagemErro.isNotEmpty)
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.red.shade200),
                  ),
                  child: Text(
                    _mensagemErro,
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
