import 'package:fitness_tracker_ui/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//implenamtation of single activity card
class ActivityCard extends StatefulWidget {
  //constuuctor
  final String activityIcon;
  final String value;
  final String activityName;
  const ActivityCard(
      {super.key,
      required this.activityIcon,
      required this.value,
      required this.activityName});

  @override
  State<ActivityCard> createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kccardBlackColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //top-icon widget
          Image.asset(
            widget.activityIcon,
            width: 25,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          //middle-text widget
          Text(
            widget.value,
            style: GoogleFonts.roboto(
                textStyle: const TextStyle(color: kcMainTextColor),
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 5,
          ),
          //bottom-text widget
          Text(
            widget.activityName,
            style: GoogleFonts.roboto(
                textStyle: TextStyle(color: kcSubTextColor),
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
