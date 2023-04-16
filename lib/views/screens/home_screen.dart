import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: (pageindex[pageIdx])),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            onTap: (index) {
              setState(() {
                pageIdx = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: yellowColor,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w500, fontFamily: 'Clash Grotesk'),
            unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w500, fontFamily: 'Clash Grotesk'),
            unselectedItemColor: Colors.white,
            backgroundColor: bottomnavColor,
            currentIndex: pageIdx,
            items: [
              customNavigationBarItem(
                  'assets/svgs/discom_icon.svg', 'discomforts'),
              customNavigationBarItem('assets/svgs/therapy.svg', 'therapy'),
              customNavigationBarItem('assets/svgs/progress.svg', 'progress'),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 100),
              height: 1.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                whiteColor.withOpacity(0.12),
                whiteColor.withOpacity(0.4),
                whiteColor.withOpacity(0.12)
              ])),
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem customNavigationBarItem(
      String imageLoc, String label) {
    return BottomNavigationBarItem(
        activeIcon: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                    blurRadius: 18,
                    color: yellowColor.withOpacity(0.3),
                    spreadRadius: 0.6)
              ]),
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            width: 20,
            height: 20,
            imageLoc,
            color: yellowColor,
          ),
        ),
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            width: 20,
            height: 20,
            imageLoc,
          ),
        ),
        label: label);
  }
}
