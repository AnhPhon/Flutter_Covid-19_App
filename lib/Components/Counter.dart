import 'package:covid19flutterapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Counter extends StatelessWidget {
  const Counter({
    Key? key,
    required this.title,
    required this.number,
    required this.color,
  }) : super(key: key);
  final String title, number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.6),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(color: color, width: 2),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          number,
          style: GoogleFonts.poppins(
            fontSize: 30,
            color: color,
          ),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 15,
            color: kTextLightColor,
          ),
        )
      ],
    );
  }
}
