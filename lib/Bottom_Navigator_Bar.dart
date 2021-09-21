import 'package:covid19flutterapp/Screens/Home_screen.dart';
import 'package:covid19flutterapp/Screens/Infor_Screen.dart';
import 'package:covid19flutterapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigatorAppBarApp extends StatefulWidget {
  const BottomNavigatorAppBarApp({Key? key}) : super(key: key);

  @override
  _BottomNavigatorAppBarAppState createState() =>
      _BottomNavigatorAppBarAppState();
}

class _BottomNavigatorAppBarAppState extends State<BottomNavigatorAppBarApp> {
  int pageIndex = 0;
  List<Widget> pageList = [
    HomeScreen(),
    InforScreen(),
    Scaffold(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.poppins(color: kRecovercolor),
        selectedIconTheme: IconThemeData(color: kRecovercolor),
        unselectedItemColor: Colors.grey,
        elevation: 0,
        backgroundColor: Colors.transparent,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.health_and_safety_outlined,
            ),
            label: 'Prevention',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
