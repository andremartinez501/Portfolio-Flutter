import 'package:flutter/material.dart';
import 'package:portfolio/constants/skills_items.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Habilidades extends StatefulWidget {
  const Habilidades({super.key});

  @override
  State<Habilidades> createState() => _HabilidadesState();
}

class _HabilidadesState extends State<Habilidades> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: skillItems.length,
          options: CarouselOptions(
            height: 200,
            viewportFraction: 1.5, // Ajuste para mostrar os itens adjacentes
            enlargeCenterPage: false, // Desabilita o efeito de zoom no item central
            enableInfiniteScroll: true, // Habilita rolagem infinita
            autoPlay: true, // Habilita autoplay no CarouselOptions
            autoPlayInterval: const Duration(seconds: 3), // Intervalo de 3 segundos
            autoPlayAnimationDuration: const Duration(milliseconds: 800), // Duração da animação
          ),
          itemBuilder: (context, index, realIndex) {
            final skill = skillItems[index];
            return Container( // Adiciona um Container para ajustar o layout
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: index == realIndex // Cor de fundo do item ativo
                    ? const Color.fromRGBO(12, 6, 81, 1)
                    : Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    skill["img"],
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    skill["title"],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Cor do texto do item ativo
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}