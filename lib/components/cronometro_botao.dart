import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? onPress;

  const CronometroBotao({
    required this.texto,
    required this.icone,
    this.onPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        // padding: EdgeInsets.symmetric(
        //   horizontal: 30,
        //   vertical: 20,
        // ),
        textStyle: const TextStyle(
          fontSize: 17,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              icone,
            ),
          ),
          Text(texto),
        ],
      ),
    );
  }
}
