import 'package:flutter/material.dart';

class SecaoBotao extends StatelessWidget {
  const SecaoBotao({super.key});

  @override
  Widget build(BuildContext context) {
    final Color cor = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BotaoComTexto(cor: cor, icone: Icons.call, label: 'Ligar'),
          BotaoComTexto(cor: cor, icone: Icons.near_me, label: 'Encaminhar'),
          BotaoComTexto(cor: cor, icone: Icons.share, label: 'Compartilhar'),
        ],
      ),
    );
  }
}

class BotaoComTexto extends StatelessWidget {
  const BotaoComTexto({
    super.key,
    required this.cor,
    required this.icone,
    required this.label,
  });

  final Color cor;
  final IconData icone;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icone, color: cor),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: cor,
            ),
          ),
        ),
      ],
    );
  }
}
