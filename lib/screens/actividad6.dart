import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_drawer.dart';

class Actividad6 extends StatelessWidget {
  const Actividad6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Texto Overflow'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _textRow(
              color: Colors.amber.shade100,
              child: const Text(
                'Primera fila: este texto es demasiado largo y no cabe en el contenedor.',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 22),
              ),
            ),
            const SizedBox(height: 16),
            _textRow(
              color: Colors.blue.shade100,
              child: AutoSizeText(
                'Segunda fila: AutoSizeText mejora la presentación ajustando el texto, '
                'aunque el contenido supera el ancho disponible.',
                maxLines: 2,
                minFontSize: 16,
                overflow: TextOverflow.fade,
                style: GoogleFonts.robotoSlab(fontSize: 24),
              ),
            ),
            const SizedBox(height: 16),
            _textRow(
              color: Colors.green.shade100,
              child: const Text(
                'Tercera fila: una fuente monoespaciada muestra otro texto muy largo '
                'que tampoco cabe en su contenedor.',
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: TextStyle(fontFamily: 'monospace', fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textRow({required Color color, required Widget child}) {
    return Container(
      width: double.infinity,
      height: 110,
      padding: const EdgeInsets.all(12),
      color: color,
      alignment: Alignment.centerLeft,
      child: child,
    );
  }
}
