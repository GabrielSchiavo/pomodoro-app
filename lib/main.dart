import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pomodoro/screens/pomodoro_screen.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
      //cor definida como transparente
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );

    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(create: (_) => PomodoroStore()),
      ],
      child: MaterialApp(
        title: 'Pomodoro',
        theme: ThemeData(
          colorSchemeSeed: const Color(0xFF006A60),
          useMaterial3: true,
          fontFamily: 'Montserrat',
        ),
        debugShowCheckedModeBanner: false,
        home: const Pomodoro(),
      ),
    );
  }
}
