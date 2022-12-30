import 'package:flutter/material.dart';

class EntradaTempoBotao extends StatelessWidget {
  final IconData icone;
  final Function() onPress;

  const EntradaTempoBotao({
    required this.icone,
    required this.onPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.all(0),
        backgroundColor: Colors.red,
      ),
      child: Icon(
        icone,
        color: Colors.white,
      ),
    );
  }
}
