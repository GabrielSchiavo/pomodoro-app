import 'package:flutter/material.dart';
import 'package:pomodoro/components/entrada_tempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Text('Pomodoro'),
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
    );
  }
}
