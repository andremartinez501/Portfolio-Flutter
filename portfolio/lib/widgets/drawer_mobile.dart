import 'package:flutter/material.dart';
import 'package:portfolio/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
            backgroundColor: const Color.fromRGBO(6, 2, 49, 1),
            child: ListView(
              children:  [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                      bottom: 20
                    ),

                    child: IconButton(onPressed: () {
                      Navigator.of(context).pop();
                    }, icon: const Icon(Icons.close)),
                  ),
                ),
                for(int i=0; i<buttonIcons.length; i++ )
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30.0
                    ),
                    titleTextStyle: const TextStyle(
                      color: Color.fromRGBO(187, 187, 187, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  onTap: () {},
                  leading: Icon(buttonIcons[i]),
                  title: Text(buttonTitles[i]),

                )
              ],
            )
          );
  }
}