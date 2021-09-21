import 'package:covid19flutterapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SymptomCard extends StatelessWidget {
  const SymptomCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  final String image, title;
  final Function() press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(19),
          boxShadow: [
            isActive
                ? BoxShadow(
                    color: kShadowColor,
                  )
                : BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 4,
                    color: Colors.black.withAlpha(90),
                  ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              height: 60,
            ),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
