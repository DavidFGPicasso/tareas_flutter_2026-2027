import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/custom_drawer.dart';

class Actividad1 extends StatelessWidget {
  const Actividad1({super.key});

  // link de github.
  static const String githubUrl =
      'https://github.com/DavidFGPicasso/tareas_flutter_2026-2027';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Nombre y Apellidos'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'David Flores Gutiérrez',
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Repositorio de GitHub:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            InkWell(
              onTap: () => launchUrl(
                Uri.parse(githubUrl),
                mode: LaunchMode.externalApplication,
              ),
              hoverColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              mouseCursor: SystemMouseCursors.click,
              child: Text(
                githubUrl,
                style: GoogleFonts.robotoMono(
                  fontSize: 16,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
