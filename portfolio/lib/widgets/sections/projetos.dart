import 'package:flutter/material.dart';
import 'package:portfolio/utils/project_utils.dart';
import 'package:portfolio/widgets/project_card.dart';

class Projetos extends StatelessWidget {
  const Projetos({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
                  color: const Color.fromRGBO(6, 2, 49, 1),
                  child:  Column(
                    children: [
                       const Text(
                        "Projetos:",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(187, 187, 187, 1)
                        ),
                      ),
                      const SizedBox(height: 50,),
                      //Projetos
                      ConstrainedBox(
                       constraints: const BoxConstraints(maxWidth: 900), 
                        child: Wrap(
                          spacing: 25,
                          runSpacing: 25,
                          children: [
                            for(int i=0; i < collegeProjects.length; i++)
                            ProjectCardWidget(
                              project: collegeProjects[i],),
                          ],
                        ),
                      )
                    ],
                  ),
                );
  }
}