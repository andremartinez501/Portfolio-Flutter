import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widgets/custom_text_field.dart';
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
            : const DrawerMobile(),
            
            // Corpo
            body: ListView(
              scrollDirection: Axis.vertical,
               children: [
          
                //Header
                if(constraints.maxWidth >= minDesktopWidth)
                  const AppBarDesktop()
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

                const SizedBox(height: 200),
                //Habilidades
                const Habilidades(),
                const SizedBox(height: 300),

                //Projetos
                const Projetos(),

                //Contato 
                const Contato(),
              ],
            ),
          );
        }
      );     
  }


}

