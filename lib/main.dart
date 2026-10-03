import 'package:flutter/material.dart';

import 'screens.dart';
import 'widgets/custom_drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
      routes: {
        '/actividad1': (_) => const Actividad1(),
        '/actividad2': (_) => const Actividad2(),
        '/actividad3': (_) => const Actividad3(),
        '/actividad4': (_) => const Actividad4(),
        '/actividad5': (_) => const Actividad5(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Actividades Flutter')),
      drawer: const CustomDrawer(),
      body: Center(
        child: Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _counter++),
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
