import 'package:flutter/material.dart';

import './components.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  const EntradaTempo({Key? key, required this.titulo, required this.valor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.titulo,
          style: TextStyle(fontSize: 25),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BotaoCircular(icone: Icons.arrow_downward),
            Text(
              '${this.valor} min',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [BotaoCircular(icone: Icons.arrow_upward)],
            ),
          ],
        ),
      ],
    );
  }
}
