import 'package:flutter/material.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/widgets/image_logo_a.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 60,
            width: double.maxFinite,
            color: const Color.fromRGBO(12, 6, 81, 1),
            child: Row(
              children: [

                Logo(
                  onTap: (){

                  },
                ),
                               
                const Spacer(),
                  
                for(int i=0; i<buttonTitles.length; i++)
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: (){},
                        child: 
                          Text(
                            buttonTitles[i],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(187, 187, 187, 1)

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}