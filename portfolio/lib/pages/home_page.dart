import 'package:flutter/material.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/appbar_desktop.dart';
import 'package:portfolio/widgets/appbar_mobile.dart';
import 'package:portfolio/widgets/sections/contato.dart';
import 'package:portfolio/widgets/sections/habilidades.dart';
import 'package:portfolio/widgets/sections/main_desktop.dart';
import 'package:portfolio/widgets/sections/main_mobile.dart';
import 'package:portfolio/widgets/sections/projetos.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys =List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

        return LayoutBuilder(
          builder: (context, constraints){
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color.fromRGBO(6, 2, 49, 1),
            endDrawer: constraints.maxWidth >= minDesktopWidth
            ? null 
            : DrawerMobile(onNavItemTap: (int navIndex){
              scaffoldKey.currentState?.closeEndDrawer();
              scrollToSection(navIndex);
            }
          ),
            
            // Corpo
            body: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                 children: [
                  SizedBox(key: navbarKeys.first),
                  //Header
                  if(constraints.maxWidth >= minDesktopWidth)
                     AppBarDesktop(onNavMenuTap: (int navIndex){
                      scrollToSection(navIndex);
                     }
                  )
                  else
                    AppBarMobile(
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
                  
                   Habilidades(
                    key: navbarKeys[1],
                  ),

                  const SizedBox(height: 500),
              
                  //Projetos
                  Projetos(
                    key: navbarKeys[2],
                  ),
              
                  //Contato 
                  Contato(
                    key: navbarKeys[3],

                ),
              ],
            ),
          ),
        );
      }
    );     
  }

  void scrollToSection(int navIndex){
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!, 
      duration: const Duration(microseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}

