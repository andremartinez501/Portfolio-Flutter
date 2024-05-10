import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo ({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Image.asset(
              "assets/logo_a.png",
              fit: BoxFit.cover,
              color: const Color.fromRGBO(216, 45, 45, 1),
        
        ),
      ),
    );
  }
}