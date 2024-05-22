import 'package:flutter/material.dart';
import 'package:portfolio/constants/skills_items.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Habilidades extends StatefulWidget {
  const Habilidades({super.key});

  @override
  State<Habilidades> createState() => _HabilidadesState();
}

class _HabilidadesState extends State<Habilidades> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Adicione o título Habilidades
        const Text(
          'Habilidades',
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(187, 187, 187, 1)
          ),
        ),
        // Adicione um SizedBox para espaçamento
        const SizedBox(height: 50), // Ajuste a altura conforme necessário
        LayoutBuilder(
          builder: (context, constraints) {
            // Ajuste de viewportFraction e espaçamento baseado na largura da tela
            double viewportFraction = constraints.maxWidth > 800 ? 0.2 : 0.4;
            double itemMargin = constraints.maxWidth > 800 ? 10.0 : 20.0;

            return CarouselSlider.builder(
              itemCount: skillItems.length,
              options: CarouselOptions(
                height: 200,
                viewportFraction: viewportFraction, // Ajuste para mostrar mais itens no desktop
                enlargeCenterPage: false, // Desabilita o efeito de zoom no item central do carousel
                enableInfiniteScroll: true, // Habilita rolagem infinita
                autoPlay: true, // Habilita autoplay
                autoPlayInterval: const Duration(seconds: 3), // Intervalo de 3 segundos
                autoPlayAnimationDuration: const Duration(milliseconds: 800), // Duração da animação
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              itemBuilder: (context, index, realIndex) {
                final skill = skillItems[index];
                final isCurrent = index == _current;

                // Verifique se as chaves existem e não são nulas
                final String img = skill["img"] ?? '';
                final String title = skill["title"] ?? 'No title';

                return AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  margin: EdgeInsets.symmetric(horizontal: itemMargin),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: isCurrent ? const Color.fromRGBO(12, 6, 81, 1) : Colors.transparent,
                    boxShadow: [
                      if (isCurrent)
                        const BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10.0,
                          offset: Offset(0, 4),
                        ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedScale(
                        scale: isCurrent ? 1.2 : 1.0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        child: Image.asset(
                          img,
                          height: isCurrent ? 100 : 80,
                          width: isCurrent ? 100 : 80,
                        ),
                      ),
                      const SizedBox(height: 16),
                      AnimatedOpacity(
                        opacity: isCurrent ? 1.0 : 0.2, // Maior opacidade para itens adjacentes
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: isCurrent ? 22 : 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
