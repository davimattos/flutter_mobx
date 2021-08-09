import 'package:flutter/material.dart';
import 'package:flutter_pomodoro_mobx/components/cronometro.dart';
import 'package:flutter_pomodoro_mobx/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  EntradaTempo(titulo: 'Trabalho', valor: 25),
                  EntradaTempo(titulo: 'Descanso', valor: 5)
                ]),
          )
        ],
      ),
    );
  }
}
