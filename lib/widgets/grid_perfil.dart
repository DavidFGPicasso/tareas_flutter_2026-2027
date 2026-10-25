import 'package:flutter/material.dart';
// Grid del perfil.
class GridPerfil extends StatelessWidget {
  final List<String> postImages;

  const GridPerfil({super.key, required this.postImages});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(2),
      physics: const BouncingScrollPhysics(),
      itemCount: postImages.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Image.asset(postImages[index], fit: BoxFit.cover);
      },
    );
  }
}