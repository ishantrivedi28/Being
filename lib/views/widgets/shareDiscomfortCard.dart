import 'package:flutter/material.dart';
import 'package:being/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

Stack shareYourDiscomfortCard(BuildContext context) {
  return Stack(
    children: [
      Align(
        alignment: Alignment.centerRight,
        child: Image(
          image: AssetImage('assets/images/glow.png'),
          fit: BoxFit.cover,
        ),
      ),
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              whiteColor.withOpacity(0.07),
              whiteColor.withOpacity(0.03)
            ]),
            borderRadius: BorderRadius.circular(30)),
        height: MediaQuery.of(context).size.height / 3.5,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: whiteColor.withOpacity(0.1),
                width: 2.0,
              ),
              gradient: LinearGradient(colors: [
                whiteColor.withOpacity(0.015),
                whiteColor.withOpacity(0.01)
              ], begin: Alignment.centerRight),
              borderRadius: BorderRadius.circular(30)),
          height: MediaQuery.of(context).size.height / 3.5,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'You can now share\nany Ds (discomforts)\nwith us',
                    style: TextStyle(
                        color: whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Clash Grotesk'),
                  ),
                  Image(image: AssetImage('assets/images/some_shape.png'))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: yellowColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('share your discomforts ',
                        style: TextStyle(
                            color: Color(0xFF060C1A),
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Clash Grotesk')),
                    SvgPicture.asset('assets/svgs/arrow_icon.svg')
                  ],
                ),
                onPressed: () {},
              ),
            )
          ]),
        ),
      ),
    ],
  );
}
