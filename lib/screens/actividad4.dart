import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class Actividad4 extends StatelessWidget {
  const Actividad4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Iconos en Filas'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // Children para los iconos.
          children: [
            Icon(Icons.hourglass_bottom_sharp, size: 40),
            Icon(Icons.female, size: 40),
            Icon(Icons.male, size: 40),
            Icon(Icons.business, size: 40),
            Icon(Icons.pets, size: 40),
          ],
        ),
      ),
    );
  }
}
