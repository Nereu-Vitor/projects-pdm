import 'package:flutter/material.dart';

import 'pages/racha_conta_page.dart';

void main() {
  runApp(const RachaContaApp());
}

class RachaContaApp extends StatelessWidget {
  const RachaContaApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String titulo = 'Racha Conta';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titulo,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const RachaContaPage(titulo: titulo),
    );
  }
}
