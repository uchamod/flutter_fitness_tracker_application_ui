import 'package:flutter/cupertino.dart';

class Responsive {
  //check whether the divice is mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 850;

  //check whether the device is tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1100 &&
      MediaQuery.of(context).size.width > 850;

  //check whether the  device is a dekstop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
