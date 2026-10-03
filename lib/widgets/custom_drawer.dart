import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
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
            _drawerItem(context, 'Actividad 1', '/actividad1', Icons.looks_one),
            _drawerItem(context, 'Actividad 2', '/actividad2', Icons.looks_two),
            _drawerItem(context, 'Actividad 3', '/actividad3', Icons.looks_3),
            _drawerItem(context, 'Actividad 4', '/actividad4', Icons.looks_4),
            _drawerItem(context, 'Actividad 5', '/actividad5', Icons.looks_5),
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
