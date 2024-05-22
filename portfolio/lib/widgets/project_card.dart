import 'package:flutter/material.dart';
import 'dart:js' as js;
import 'package:portfolio/utils/project_utils.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.project,
  });

final Projects project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 320,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(12, 6, 81, 1),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            project.image, 
            height: 140,
            width: 260,
            fit: BoxFit.cover,
            ),
            // Titulo
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
              child: Text(
                project.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(187, 187, 187, 1),
                ),
              ),
            ),
            // Subtitulo
             Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child:  Text(
                project.subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(187, 187, 187, 1),
                ),
              ),
            ),
            const Spacer(),
            // pé
            Container(
              color:const Color.fromARGB(255, 3, 0, 34),
              padding: const EdgeInsets.symmetric(
                horizontal: 12, 
                vertical: 10
                ),
              child:  Row(
                children: [
                  const Text(
                    "Confira o link para o GitHub do projeto:",
                    style: TextStyle(
                     color: Color.fromRGBO(216,45,45,1),
                     fontSize: 10,
                     fontWeight: FontWeight.bold
                    ),
                  ),
                  const Spacer(),
                  if(project.link!=null)
                  InkWell(
                    onTap: (){
                      js.context.callMethod("open",[project.link]);
                    },
                    child: Image.asset(
                      'assets/github.png',
                      width: 17,                                    
                                                      ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}