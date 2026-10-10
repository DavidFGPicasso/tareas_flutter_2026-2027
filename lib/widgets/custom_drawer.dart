import 'package:flutter/material.dart';

// Drawer de la aplicacion.
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    //color del menu.
    final Color menuColor = Theme.of(context).colorScheme.primary;

    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Container(
              height: 80,
              color: menuColor,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                'Menú',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            _drawerItem(context, 'Actividad 1', '/actividad1', Icons.filter_1),
            _drawerItem(context, 'Actividad 2', '/actividad2', Icons.filter_2),
            _drawerItem(context, 'Actividad 3', '/actividad3', Icons.filter_3),
            _drawerItem(context, 'Actividad 4', '/actividad4', Icons.filter_4),
            _drawerItem(context, 'Actividad 5', '/actividad5', Icons.filter_5),
            _drawerItem(context, 'Actividad 6', '/actividad6', Icons.filter_6),
            _drawerItem(context, 'Actividad 7', '/actividad7', Icons.filter_7),
            _drawerItem(context, 'Actividad 8', '/actividad8', Icons.filter_8),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(
    BuildContext context,
    String title,
    String route,
    IconData icon,
  ) {
    // Listtile para cada item.
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
    );
  }
}
