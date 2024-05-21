import 'package:fitness_tracker_ui/util/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleCard extends StatefulWidget {
  final String title;
  final String daytime;
  const ScheduleCard({super.key, required this.title, required this.daytime});

  @override
  State<ScheduleCard> createState() => _ScheduleCardState();
}

class _ScheduleCardState extends State<ScheduleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: kcsummaryCard,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _ItemColumn(widget.title, widget.daytime),
            Icon(
              Icons.bookmark,
              color: kcSubTextColor,
              size: 22,
            ),
          ],
        ),
      ),
    );
  }

  Widget _ItemColumn(String top, String bottom) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            top,
            style: GoogleFonts.lato(
              textStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: kcMainTextColor),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            bottom,
            style: GoogleFonts.lato(
              textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: kcSubTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
