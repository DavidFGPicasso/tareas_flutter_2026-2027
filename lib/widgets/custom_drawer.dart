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
            _drawerItem(context, '1. Actividad 1', '/actividad1'),
            _drawerItem(context, '2. Actividad 2', '/actividad2'),
            _drawerItem(context, '3. Actividad 3', '/actividad3'),
            _drawerItem(context, '4. Actividad 4', '/actividad4'),
            _drawerItem(context, '5. Actividad 5', '/actividad5'),
            _drawerItem(context, '6. Actividad 6', '/actividad6'),
            _drawerItem(context, '7. Actividad 7', '/actividad7'),
            _drawerItem(context, '8. Actividad 8', '/actividad8'),
            _drawerItem(context, '9. Actividad 9', '/actividad9'),
            _drawerItem(context, '10. Actividad 10', '/actividad10'),
            _drawerItem(context, '11. Actividad 11', '/actividad11'),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(
    BuildContext context,
    String title,
    String route,
  ) {
    // Listtile para cada item.
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
    );
  }
}
