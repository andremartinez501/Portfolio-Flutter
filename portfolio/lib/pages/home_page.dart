import 'package:flutter/material.dart';
import 'package:portfolio/constants/nav_items.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: const Color.fromRGBO(12, 6, 81, 1),
          endDrawer: Drawer(
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
          ),
           //corpo
           body: ListView(
            scrollDirection: Axis.vertical,
             children: [

             //Header
             //const HeaderDesktop(),
             HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                scaffoldKey.currentState?.openEndDrawer();
              },
             ),

              //Sobre 
              Container(
                height: 500,
                width: double.maxFinite,
                color: const Color.fromRGBO(6, 2, 49, 1),
              ),
              //Experiencia 
              Container(
                height: 500,
                width: double.maxFinite,
                color: const Color.fromRGBO(6, 2, 49, 1)
              ),
              //Projetos
              Container(
                height: 500,
                width: double.maxFinite,
                color: const Color.fromRGBO(6, 2, 49, 1)
              ),
              //Contato 
              Container(
                height: 500,
                width: double.maxFinite,
                color: const Color.fromRGBO(6, 2, 49, 1)
              ),
            ],
           ),
        );
      
    
  }
}