import 'dart:math';

// Classe criada para facilitar o cálculo do IMC
class ImcCalculadora {
  final double peso;
  final double altura;

  const ImcCalculadora({required this.peso, required this.altura});

  String validar() {
    if (peso <= 0.0) {
      return 'O peso deve ser maior que zero.';
    }

    if (altura <= 0.0) {
      return 'A altura deve ser maior que zero.';
    }

    return '';
  }

  double calcularImc() {
    return peso / pow(altura, 2);
  }

  String obterClassificacao(double imc) {
    String classificacao = '';

    if (imc < 20.0) {
      classificacao = 'Abaixo do peso';
    } else if (imc < 25.0) {
      classificacao = 'Peso Normal';
    } else if (imc < 30.0) {
      classificacao = 'Sobrepeso';
    } else if (imc < 40.0) {
      classificacao = 'Obeso';
    } else {
      classificacao = 'Obeso Mórbido';
    }

    return classificacao;
  }
}
