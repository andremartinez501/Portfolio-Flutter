
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
                  width: screenWidth,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20
                    ),
                  height: screenHeight/1.2,
                  constraints: const BoxConstraints(
                    minHeight: 350.0
                    ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: const TextSpan(
                              text: "Olá, meu nome é",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromRGBO(216,45,45,1)
                              ),
                              children: [
                                TextSpan(
                                  text:"\nAndré Martinez de Souza.",
                                  style: TextStyle(
                                    height: 2,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: Color.fromRGBO(187, 187, 187, 1)
                                  ) 
                                ),
                                TextSpan(
                                  text: "\nE este é meu portfólio:",
                                  style: TextStyle(
                                    height: 1.8,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: Color.fromRGBO(91, 91, 91, 1)
                                    )
                                  ),
                                TextSpan(
                                  text: """\nSou um estudante de Ciências da Computação atualmente no terceiro semestre no Instituto Mauá de Tecnologia.\nTenho interesse pela área de Ciência de Dados, buscando diariamente meu desenvolvimento profissional e pessoal,\nme desafiando com novos projetos e linguagens.""",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color.fromRGBO(91, 91, 91, 1)
                                    )
                                  ),
                              ]
                            ),
                          ),
                          const SizedBox(height: 15)

                        ],
                      ),
                      Flexible(
                        flex: 1,
                        child: Image.asset(
                          "assets/prompt.png",
                          width: screenWidth/2,
                          ),
                      ),
                      ],
                    ),
                  );
  }
}