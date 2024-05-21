import 'package:fitness_tracker_ui/model/side_bar_model.dart';
import 'package:flutter/material.dart';

class SideBarData {
  List<SideBar> sideBarData = [
    SideBar(iconData: Icons.home, title: "Dashbord"),
    SideBar(iconData: Icons.account_box_rounded, title: "Profile"),
    SideBar(iconData: Icons.run_circle, title: "Exercise"),
    SideBar(iconData: Icons.settings, title: "Setting"),
    SideBar(iconData: Icons.history, title: "History"),
    SideBar(iconData: Icons.logout, title: "Sign out"),
  ];
}
