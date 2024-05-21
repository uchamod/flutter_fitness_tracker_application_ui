import 'package:fitness_tracker_ui/util/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: kcsummaryCard,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ItemColumn("Cal", "305"),
          _ItemColumn("Steps", "27867"),
          _ItemColumn("Distance", "17km"),
          _ItemColumn("Sleep", "6h 15m"),
        ],
      ),
    );
  }

  Widget _ItemColumn(String top, String bottom) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
