import 'package:flutter/material.dart';

class BotaoCronometro extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;

  const BotaoCronometro(
      {Key? key, required this.texto, required this.icone, this.click})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          textStyle: TextStyle(fontSize: 25)),
      onPressed: click,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            icone,
            size: 35,
          ),
        ),
        Text(texto)
      ]),
    );
  }
}
