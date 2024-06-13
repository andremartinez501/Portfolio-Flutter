import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
        constraints: BoxConstraints(minHeight: screenHeight),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagem
            Image.asset(
              "assets/prompt.png",
              width: screenWidth,
            ),
            const SizedBox(height: 40),
            // Texto
            RichText(
              text: const TextSpan(
                text: "Olá, meu nome é",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color.fromRGBO(216, 45, 45, 1)),
                children: [
                  TextSpan(
                    text: "\nAndré Martinez de Souza.",
                    style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Color.fromRGBO(187, 187, 187, 1)),
                  ),
                  TextSpan(
                    text: "\nE este é meu portfólio:",
                    style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Color.fromRGBO(91, 91, 91, 1)),
                  ),
                  TextSpan(
                    text:
                        """\nSou um estudante de Ciências da Computação atualmente no terceiro semestre no Instituto Mauá de Tecnologia.\nTenho interesse pela área de Ciência de Dados, buscando diariamente meu desenvolvimento profissional e pessoal,\nme desafiando com novos projetos e linguagens.""",
                    style: TextStyle(
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(91, 91, 91, 1)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
