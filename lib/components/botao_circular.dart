import 'package:flutter/material.dart';

class BotaoCircular extends StatelessWidget {
  final IconData icone;
  final void Function()? onpress;

  const BotaoCircular({Key? key, required this.icone, this.onpress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpress,
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
