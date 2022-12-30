import 'package:flutter/material.dart';
import 'package:pomodoro/components/entrada_tempo_botao.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;

  const EntradaTempo({
    required this.titulo,
    required this.valor,
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
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(50),
            //     ),
            //     padding: const EdgeInsets.all(0),
            //     backgroundColor: Colors.red,
            //   ),
            //   child: const Icon(
            //     Icons.arrow_downward_rounded,
            //     color: Colors.white,
            //   ),
            // ),


            EntradaTempoBotao(
              icone: Icons.arrow_downward_rounded,
              onPress: () {},
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
              onPress: () {},
            ),
            const SizedBox(width: 5),


            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(50),
            //     ),
            //     padding: const EdgeInsets.all(0),
            //     backgroundColor: Colors.red,
            //   ),
            //   child: const Icon(
            //     Icons.arrow_upward_rounded,
            //     color: Colors.white,
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
