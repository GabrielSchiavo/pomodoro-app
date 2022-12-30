import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: Cronometro(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: const [
                  EntradaTempo(
                    titulo: 'Trabalho',
                    valor: 25,
                  ),
                  SizedBox(height: 15),
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
