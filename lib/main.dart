import 'package:flutter/material.dart';

import 'screens.dart';
import 'widgets/custom_drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Color para el appBar.
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
      // rutas para acceder a las actividades.
      routes: {
        '/actividad1': (_) => const Actividad1(),
        '/actividad2': (_) => const Actividad2(),
        '/actividad3': (_) => const Actividad3(),
        '/actividad4': (_) => const Actividad4(),
        '/actividad5': (_) => const Actividad5(),
        '/actividad6': (_) => const Actividad6(),
        '/actividad7': (_) => const Actividad7(),
        '/actividad8': (_) => const Actividad8(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actividades Flutter'),
        // colores.
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      // Mostramos el drawer.
      drawer: const CustomDrawer(),
      body: Center(
        child: Icon(
          Icons.flutter_dash,
          size: 100,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
