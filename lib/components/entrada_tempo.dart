import 'package:flutter/material.dart';
import 'package:pomodoro/components/entrada_tempo_botao.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    required this.titulo,
    required this.valor,
    this.inc,
    this.dec,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontSize: 21,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EntradaTempoBotao(
              icone: Icons.arrow_downward_rounded,
              onPress: dec,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              child: Text(
                '$valor min',
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            EntradaTempoBotao(
              icone: Icons.arrow_upward_rounded,
              onPress: inc,
            ),
            const SizedBox(width: 5),
          ],
        ),
      ],
    );
  }
}
