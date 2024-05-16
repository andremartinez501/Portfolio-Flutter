import 'package:flutter/material.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/widgets/image_logo_a.dart';

class AppBarDesktop extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(12, 6, 81, 1),
      title: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              // Ajusta a altura do Logo para o tamanho da AppBar
              SizedBox(
                height: 60, // Altura da AppBar
                child: Logo(
                  onTap: () {},
                ),
              ),
              const Spacer(), // Empurra os botões para a direita

              // Cria uma lista de botões responsiva
              Wrap(
                spacing: 20, // Espaçamento entre os botões
                children: List.generate(buttonTitles.length, (index) {
                  return TextButton(
                    onPressed: () {}, // Adicione a funcionalidade de clique em cada botão
                    child: Text(
                      buttonTitles[index],
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(187, 187, 187, 1),
                      ),
                    ),
                  );
                }),
              ),
            ],
          );
        },
      ),
      automaticallyImplyLeading: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}