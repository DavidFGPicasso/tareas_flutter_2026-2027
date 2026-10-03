import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class Actividad5 extends StatelessWidget {
  const Actividad5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Imágenes en Columnas'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      // Columna para las imagenes.
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: [
            Image.asset('assets/images/goldship.webp', height: 100),
            Image.asset('assets/images/tmopera.png', height: 100),
            Image.asset('assets/images/supercreek.webp', height: 100),
            Image.asset('assets/images/oguricap.webp', height: 100),
            Image.asset('assets/images/neouniverse.webp', height: 100),
          ],
        ),
      ),
    );
  }
}
