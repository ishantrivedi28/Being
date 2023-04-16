import 'package:being/constants.dart';
import 'package:being/views/widgets/shareDiscomfortCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscomfortScreenEmpty extends StatelessWidget {
  const DiscomfortScreenEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.8,
                decoration: BoxDecoration(color: backgroundColor),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1.8,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage('assets/images/background_gradient.png'),
                      fit: BoxFit.fill),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "KNOW YOURSELF",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color(0xFFB3B3B3),
                                  fontSize: 11,
                                  fontFamily: 'Clash Grotesk',
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'your Ds (Discomforts)\nwill be here soon!',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'BD Gitalona Moxa',
                                  fontSize: 22),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                          ]),
                      //you can now share wala container
                      shareYourDiscomfortCard(context)
                    ],
                  ),
                ),
              )
            ],
          ),
          //second section
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
              color: backgroundColor,
            ),
            child: Column(
              children: [
                Divider(thickness: 0.9, color: whiteColor.withOpacity(0.2)),
                SizedBox(
                  height: 35,
                ),
                stepWidget(
                    'done_icon', '1', 'Schedule first chat with science'),
                SizedBox(
                  height: 35,
                ),
                stepWidget('done_icon', '2', 'Chat with science'),
                SizedBox(
                  height: 35,
                ),
                stepWidget(
                    'wait_icon', '3', 'Recieve your first set of\ndiscomforts')
              ],
            ),
          )
        ],
      ),
    ));
  }

  Row stepWidget(String iconPath, String stepNumber, String label) {
    return Row(
      children: [
        SvgPicture.asset('assets/svgs/$iconPath.svg'),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'STEP $stepNumber',
              style: TextStyle(
                  color: Color(0xFF808080),
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Clash Grotesk',
                  fontSize: 11),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              label,
              style: TextStyle(
                color: whiteColor,
                fontFamily: 'Clash Grotesk',
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            )
          ],
        ),
      ],
    );
  }
}
