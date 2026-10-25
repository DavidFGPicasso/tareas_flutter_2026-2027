import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';
import '../widgets/cabecera_perfil.dart';
import '../widgets/descripcion_perfil.dart';
import '../widgets/acciones_perfil.dart';
import '../widgets/destacados_Perfil.dart';
import '../widgets/navegacion_perfil.dart';
import '../widgets/grid_perfil.dart';

const postImages = [
  'assets/images/paella.webp',
  'assets/images/manquita.webp',
  'assets/images/mezquita.webp',
  'assets/images/alhambra.webp',
  'assets/images/sacredfamily.webp',
  'assets/images/alcazar.webp',
  'assets/images/royalpalace.webp',
  'assets/images/teide.webp',
  'assets/images/islands.webp',
  'assets/images/santiago.webp',
  'assets/images/escorial.webp',
];

const highlights = [
  {'title': 'Info', 'icon': 'assets/images/spain.webp'},
  {'title': 'Gastronomy', 'icon': 'assets/images/spainfood.webp'},
  {'title': 'Culture', 'icon': 'assets/images/culture.webp'},
  {'title': 'Nature', 'icon': 'assets/images/nature.webp'},
  {'title': 'tips', 'icon': 'assets/images/tips.webp'},
];

class Actividad11 extends StatelessWidget {
  const Actividad11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Row(
          children: const [
            Text('DiscoverSpain', style: TextStyle(color: Colors.black)),
            SizedBox(width: 6),
            Icon(Icons.verified, color: Colors.blue, size: 18),
          ],
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          const CabeceraPerfil(),
          const DescripcionPerfil(),
          const SizedBox(height: 12),
          const AccionesPerfil(),
          const SizedBox(height: 16),
          DestacadosPerfil(highlights: highlights),
          const SizedBox(height: 12),
          const NavegacionPerfil(),
          const SizedBox(height: 8),
          Expanded(child: GridPerfil(postImages: postImages)),
        ],
      ),
    );
  }
}
