import 'package:flutter/material.dart';
import 'package:portfolio/widgets/image_logo_a.dart';

class AppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap, onMenuTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(12, 6, 81, 1),
      title: SizedBox(
        height: 50, // Altura da AppBar
        child: Logo(
          onTap: onLogoTap,
        ),
      ),
      automaticallyImplyLeading: false, // Remove o botão "back" padrão
      actions: [
        IconButton(
          onPressed: onMenuTap,
          icon: const Icon(Icons.menu),
        ),
        const SizedBox(width: 15) // Espaçamento entre o ícone e a borda direita
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}