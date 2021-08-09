import 'package:flutter/material.dart';

class BotaoCircular extends StatelessWidget {
  final IconData icone;

  const BotaoCircular({Key? key, required this.icone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(
        icone,
        color: Colors.white,
      ),
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(15),
          primary: Colors.red),
    );
  }
}
