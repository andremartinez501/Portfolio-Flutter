import 'package:flutter/material.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/sections/main_desktop.dart';
import 'package:portfolio/widgets/sections/main_mobile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
        return LayoutBuilder(
          builder: (context, constraints){
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color.fromRGBO(12, 6, 81, 1),
            endDrawer: constraints.maxWidth >= minDesktopWidth
            ? null 
            : const DrawerMobile(),
            
            // Corpo
            body: ListView(
              scrollDirection: Axis.vertical,
               children: [
          
                //Header
                if(constraints.maxWidth >= minDesktopWidth)
                  const HeaderDesktop()
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),

                //Desktop
                if(constraints.maxWidth >= minDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),
              
                //Habilidades
                Container(
                  width: screenWidth,
                  padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: const Color.fromRGBO(6, 2, 49, 1),
                  child: const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //Título
                      Text("Habilidades:",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(187, 187, 187, 1)
                        ),
                      )
                      
                    ],
                  ),
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
        );
         
    
  }
}