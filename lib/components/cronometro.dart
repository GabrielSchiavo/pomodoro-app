import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[400],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            '25:00',
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CronometroBotao(
                  texto: 'Iniciar',
                  icone: Icons.play_arrow_rounded,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(right: 10),
              //   child: CronometroBotao(
              //     texto: 'Parar',
              //     icone: Icons.stop_rounded,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: CronometroBotao(
                  texto: 'Reiniciar',
                  icone: Icons.refresh_rounded,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
