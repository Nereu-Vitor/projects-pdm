import 'package:flutter/material.dart';

class SecaoTitulo extends StatelessWidget {
  const SecaoTitulo({super.key, required this.nome, required this.localizacao});

  final String nome;
  final String localizacao;

  @override
  Widget build(BuildContext coisa) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    nome,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(localizacao, style: TextStyle(color: Colors.grey[500]))
              ],
            )
          ),
          Icon(Icons.star, color: Colors.red[500]),
          const Text('41')
        ],
      ),
    );
  }
}
