import 'package:fitness_tracker_ui/data/side_bar-data.dart';
import 'package:fitness_tracker_ui/model/side_bar_model.dart';
import 'package:fitness_tracker_ui/responsive/responsive_devices.dart';
import 'package:fitness_tracker_ui/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  //variables initilizations sidebardata and item track variable
  List<SideBar> sidebarData = SideBarData().sideBarData;
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Container(
      color: !isDesktop ? kcMainBackgroundColor : null,
      child: Padding(
        padding: const EdgeInsets.only(left: defultPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: sidebarData.length,
              itemBuilder: (context, index) {
                SideBar sidebarItem = sidebarData[index];
                return sideBarItem(sidebarItem, index);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget sideBarItem(SideBar sidebarItem, int index) {
    //detect when tap the item widget colors change
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
            //ternery operater use to change the coolr accoding to tapitem
            color: index == selectedItem ? kcChartpink : kcMainBackgroundColor,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 30,
              ),
              Icon(
                sidebarItem.iconData,
                color: index == selectedItem
                    ? kcMainBackgroundColor
                    : kcSubTextColor,
                size: 17,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                sidebarItem.title,
                style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                        color: index == selectedItem
                            ? kcMainBackgroundColor
                            : kcSubTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
