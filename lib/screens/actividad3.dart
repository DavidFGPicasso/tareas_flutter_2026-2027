import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class Actividad3 extends StatelessWidget {
  const Actividad3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Miniaturas en Columnas'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: [
            Image.asset('assets/images/specialweek.webp', height: 100),
            Image.asset('assets/images/tokaiteio.webp', height: 100),
            Image.asset('assets/images/silence.webp', height: 100),
          ],
        ),
      ),
    );
  }
}
