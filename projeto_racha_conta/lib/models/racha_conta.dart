class RachaConta {
  final double valorConta;
  final int qtdPessoas;
  final double porcentagemGorjeta;

  RachaConta({
    required this.valorConta,
    required this.qtdPessoas,
    required this.porcentagemGorjeta,
  });

  String? validar() {
    if (valorConta <= 0.0) {
      return 'O valor da conta deve ser maior que zero.';
    }

    if (qtdPessoas <= 0) {
      return 'A quantidade de pessoas deve ser pelo menos 1.';
    }

    return null;
  }

  double calcularTotalComGorjeta() {
    double valorTotal = valorConta + (valorConta * (porcentagemGorjeta / 100));
    return valorTotal;
  }

  double calcularPorPessoa() {
    double totalPessoa = calcularTotalComGorjeta() / qtdPessoas;
    return totalPessoa;
  }
}
