import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class Actividad7 extends StatelessWidget {
  const Actividad7({super.key});

  static const String internetImageUrl =
      'https://images.unsplash.com/photo-1518717758536-85ae29035b6d'
      '?auto=format&fit=crop&w=600&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Imágenes Dispuestas'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _imageTile(
              image: const AssetImage('assets/images/perro.webp'),
              label: 'Imagen local',
            ),
            _imageTile(
              image: const NetworkImage(internetImageUrl),
              label: 'Imagen de Internet',
            ),
            _imageTile(
              image: const AssetImage('assets/images/perro.webp'),
              label: 'Imagen repetida',
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageTile({required ImageProvider image, required String label}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          children: [
            Image(
              image: image,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Text(label, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
