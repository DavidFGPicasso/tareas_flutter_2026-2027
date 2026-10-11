import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class Actividad7 extends StatelessWidget {
  const Actividad7({super.key});

  static const String internetImageUrl =
      'https://images.unsplash.com/photo-1518717758536-85ae29035b6d'
      '?auto=format&fit=crop&w=600&q=80';

  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    final imagenWidth = tamano.width * 0.8;
    final imagenHeight = tamano.height * 0.22;
    final separacionVertical = tamano.height * 0.03;

    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Imagenes Dispuestas'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: separacionVertical),
              _image(
                const AssetImage('assets/images/perro.webp'),
                'Imagen local',
                imagenWidth,
                imagenHeight,
              ),
              SizedBox(height: separacionVertical),
              _image(
                const NetworkImage(internetImageUrl),
                'Imagen de Internet',
                imagenWidth,
                imagenHeight,
              ),
              SizedBox(height: separacionVertical),
              _image(
                const AssetImage('assets/images/perro.webp'),
                'Imagen repetida',
                imagenWidth,
                imagenHeight,
              ),
              SizedBox(height: separacionVertical),
            ],
          ),
        ),
      ),
    );
  }
// widget para mostrar la imagen y el texto ajustados a la pantalla.
  Widget _image(
    ImageProvider image,
    String label,
    double width,
    double height,
  ) {
    return Column(
      children: [
        Image(image: image, width: width, height: height, fit: BoxFit.contain),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
