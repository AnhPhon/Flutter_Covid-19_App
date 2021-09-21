import 'package:covid19flutterapp/Components/My_Header.dart';
import 'package:covid19flutterapp/Components/Prevent_Card.dart';
import 'package:covid19flutterapp/Components/Symptom_Card.dart';
import 'package:covid19flutterapp/constants.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class InforScreen extends StatefulWidget {
  const InforScreen({Key? key}) : super(key: key);

  @override
  _InforScreenState createState() => _InforScreenState();
}

class _InforScreenState extends State<InforScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyHeader(
                image: 'assets/icons/coronadr.svg',
                textTop: 'Get to know',
                textBottom: "About Covid-19"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Symptoms',
                    style: GoogleFonts.poppins(
                        color: kTitleTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptomCard(
                        image: 'assets/images/headache.png',
                        title: 'Headache',
                        press: () {
                          setState(() {});
                        },
                        isActive: false,
                      ),
                      SymptomCard(
                        image: 'assets/images/headache.png',
                        title: 'Headache',
                        press: () {
                          setState(() {});
                        },
                        isActive: true,
                      ),
                      SymptomCard(
                        image: 'assets/images/headache.png',
                        title: 'Headache',
                        press: () {
                          setState(() {});
                        },
                        isActive: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Prevention',
                    style: GoogleFonts.poppins(
                        color: kTitleTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventCard(
                    image: 'assets/images/wear_mask.png',
                    subTitle:
                        'Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks',
                    title: 'Wear face mask',
                  ),
                  PreventCard(
                    image: 'assets/images/wash_hands.png',
                    subTitle:
                        'Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks',
                    title: 'Wash your hands',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
