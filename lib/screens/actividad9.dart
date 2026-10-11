import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
// actividad del desafio.
class Actividad9 extends StatelessWidget {
  const Actividad9({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('El desafío'),
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      backgroundColor: const Color(0xFF102A43),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(44, 28, 44, 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'El desafío',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF9C74F),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 96),
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 470),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: Color(0xFF1D4E5F),
                        shape: BoxShape.circle,
                        border: Border.fromBorderSide(
                          BorderSide(color: Color(0xFFF9C74F), width: 12),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'H',
                          style: TextStyle(
                            color: Color(0xFFF9C74F),
                            fontSize: 150,
                            fontWeight: FontWeight.w300,
                            height: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
