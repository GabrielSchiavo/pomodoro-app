import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: Cronometro(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  EntradaTempo(
                    titulo: 'Trabalho',
                    valor: 25,
                  ),
                  EntradaTempo(
                    titulo: 'Descanço',
                    valor: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
