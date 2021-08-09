import 'package:flutter/material.dart';

import './components.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo(
      {Key? key, required this.titulo, required this.valor, this.inc, this.dec})
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
            BotaoCircular(icone: Icons.arrow_downward, onpress: this.dec),
            Text(
              '${this.valor} min',
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BotaoCircular(
                  icone: Icons.arrow_upward,
                  onpress: this.inc,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
