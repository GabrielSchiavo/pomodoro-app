import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pomodoro/screens/pomodoro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      //cor definida como transparente
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    
    return MaterialApp(
      title: 'Pomodoro',
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF006A60),
        useMaterial3: true,
        fontFamily: 'RobotoFlex',
      ),
      debugShowCheckedModeBanner: false,
      home: const Pomodoro(),
    );
  }
}




// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:pomodoro/store/contador.store.dart';

// final store = ContadorStore();

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Contador'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Observer(
//               builder: (_) => Text(
//                 '${store.contador}',
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: store.incrementar,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
