import 'package:flutter/material.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

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
    final store = Provider.of<PomodoroStore>(context);
    
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
        backgroundColor: store.estaTrabalhando() ? Theme.of(context).colorScheme.tertiary : Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),
      child: Icon(
        icone,
        color: Theme.of(context).colorScheme.background,
        size: 22,
      ),
    );
  }
}
