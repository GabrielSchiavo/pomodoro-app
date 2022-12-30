import 'package:flutter/material.dart';

class EntradaTempoBotao extends StatelessWidget {
  final IconData icone;
  final void Function()? onPress;

  const EntradaTempoBotao({
    this.onPress,
    required this.icone,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 0,
          vertical: 0,
        ),
        backgroundColor: Colors.red[400],
        elevation: 0,
      ),
      child: Icon(
        icone,
        color: Colors.white,
        size: 22,
      ),
    );
  }
}
