import 'package:fitness_tracker_ui/responsive/responsive_devices.dart';
import 'package:fitness_tracker_ui/util/constants.dart';
import 'package:flutter/material.dart';

class SerchBar extends StatefulWidget {
  const SerchBar({super.key});

  @override
  State<SerchBar> createState() => _SerchBarState();
}

class _SerchBarState extends State<SerchBar> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          //open the drawer using gestureditector with icon
          if (!isDesktop)
            GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.menu,
                  color: kcSubTextColor,
                  size: 24,
                ),
              ),
            ),
          //implemant the search bar
          Expanded(
            child: TextField(
              enableSuggestions: true,
              style: TextStyle(color: kcSubTextColor),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xff000000).withOpacity(0.1),
                hintText: "Search",
                hintStyle: TextStyle(color: kcSubTextColor, fontSize: 16),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: const Color(0xff000000).withOpacity(0.1),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      BorderSide(color: Theme.of(context).highlightColor),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: kcSubTextColor,
                  size: 18,
                ),
              ),
            ),
          ),

          //open the drawer using gestureditector with icon
          if (!isDesktop)
            GestureDetector(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/fox.jpeg",
                      width: 45,
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
