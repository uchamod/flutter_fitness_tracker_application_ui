import 'package:fitness_tracker_ui/homepage/dashbord/dashbord.dart';
import 'package:fitness_tracker_ui/homepage/side_menu/side_menu.dart';
import 'package:fitness_tracker_ui/homepage/summary/summary.dart';
import 'package:fitness_tracker_ui/responsive/responsive_devices.dart';
import 'package:fitness_tracker_ui/util/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      //implemant a drawer if the screen sizeunder the desktop size the menu bar is cathch from a drawer
      drawer: !isDesktop
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              child: SideMenu(),
            )
          : null,
      endDrawer: !isDesktop
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Summary(),
            )
          : null,
      backgroundColor: kcMainBackgroundColor,
      body: Row(
        children: [
          //check the screen size is desktop
          if (isDesktop)
            const Expanded(
              flex: 1,
              child: SizedBox(
                child: SideMenu(), //sidemenu
              ),
            ),
          const Expanded(
            flex: 4,
            child: SizedBox(
              child: Dashbord(), //dashboard
            ),
          ),
          //check the screen size is desktop
          if (isDesktop)
            const Expanded(
              flex: 2,
              child: SizedBox(
                child: Summary(), //summary
              ),
            ),
        ],
      ),
    );
  }
}
