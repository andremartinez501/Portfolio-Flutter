import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_text_field.dart';

class Contato extends StatelessWidget {
  const Contato({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: const Color.fromRGBO(6, 2, 49, 1),
                  child:  Column(
                    children: [
                      //titulo
                       const Text(
                        'Entre em contato:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromRGBO(187, 187, 187, 1)
                        ),
                      ),

                          SizedBox(height: 50,),

                      // textfields:
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 700,),
                        child: const Row(
                          children: [
                            //nome
                            Flexible(
                              child: CustomTextField(
                                hinText: "Seu nome:",
                              ),
                            ),
                            SizedBox(width: 15,),
                            //email
                            Flexible(
                              child: CustomTextField(
                                hinText: "Seu email:",
                              ),
                            ),
                          ],
                        ),
                      ),
                      //mensagem
                      const SizedBox(height: 15,),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 700,),
                        child: const CustomTextField(
                          hinText: "Sua mensagem:",
                          maxLines: 20, 
                        ),
                      ),
                      const SizedBox(height: 20,),
                      // botão de enviar
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 300,),
                        child: SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 3, 0, 34))
                            ),
                            onPressed: (){}, 
                            child: const Text(
                              "Enviar mensagem",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(216,45,45,1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                );
  }
}