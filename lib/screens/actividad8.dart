import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class Actividad8 extends StatelessWidget {
  const Actividad8({super.key});

  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size;
    final ancho = tamano.width;
    final alto = tamano.height;

    final double imagenWidth = ancho * 0.25;
    final double imagenHeight = alto * 0.15;
    final double separacionHorizontal = ancho * 0.06;
    final double separacionVertical = alto * 0.03;

    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Imágenes Responsive'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: separacionVertical),
              // Fila 1 (1 imagen centrada)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/calabaza.jpg',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('Calabaza'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: separacionVertical),
              // Fila 2 (2 imágenes centradas)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/coliflor.jpg',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('Coliflor'),
                    ],
                  ),
                  SizedBox(width: separacionHorizontal),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/espinaca.jpg',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('Espinacas'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: separacionVertical),
              // Fila 3 (3 imágenes centradas)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/lechuga.jpg',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('Lechuga'),
                    ],
                  ),
                  SizedBox(width: separacionHorizontal),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/zanahorias.jpg',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('Zanahoria'),
                    ],
                  ),
                  SizedBox(width: separacionHorizontal),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/patata.jpg',
                        width: imagenWidth,
                        height: imagenHeight,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 8),
                      const Text('Patata'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: separacionVertical),
            ],
          ),
        ),
      ),
    );
  }
}
