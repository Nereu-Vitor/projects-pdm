import 'package:flutter/material.dart';
import '/pages/button.dart';
import '/pages/text.dart';
import '/pages/title.dart';
import '/pages/image.dart';

class Layer extends StatelessWidget {
  const Layer({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo = 'Meu primeiro layout';

    return MaterialApp(
      title: titulo,
      home: Scaffold(
        appBar: AppBar(title: const Text(titulo)),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              SecaoImagem(image: 'images/lago.jpg'),
              SecaoTitulo(
                nome: 'Área de Camping do Lago Oeschinen',
                localizacao: 'Kandersteg, Suíça',
              ),
              SecaoBotao(),
              SecaoTexto(
                descricao:
                    'O Lago Oeschinen fica aos pés do Blüemlisalp, nos Alpes Berneses. '
                    'Situado a 1.578 metros acima do nível do mar, é um '
                    'dos ​​maiores lagos alpinos. Um passeio de teleférico a partir '
                    'de Kandersteg, seguido por uma caminhada de meia hora por pastagens '
                    'e florestas de pinheiros, leva você ao lago, cujas águas chegam a 20 '
                    'graus Celsius no verão. As atividades disponíveis no local '
                    'incluem passeios de barco a remo e a pista de tobogã de verão.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
