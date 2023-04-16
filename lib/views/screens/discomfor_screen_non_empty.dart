import 'package:being/constants.dart';
import 'package:being/controller/discomfort_controller.dart';
import 'package:being/models/discomfort.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:being/views/widgets/shareDiscomfortCard.dart';

class DiscomfortNonEmpty extends StatefulWidget {
  const DiscomfortNonEmpty({super.key});

  @override
  State<DiscomfortNonEmpty> createState() => _DiscomfortNonEmptyState();
}

class _DiscomfortNonEmptyState extends State<DiscomfortNonEmpty> {
  DiscomfortController discomfortController = Get.put(DiscomfortController());
  Set<int> _selectedIndices = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
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
                          image: AssetImage(
                              'assets/images/background_gradient.png'),
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
                                  'identify Ds(Discomforts)\nyou relate to',
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
                          shareYourDiscomfortCard(context),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              //second section
              Obx(
                () => Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: backgroundColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tap on the cards to prioritize up to 3 Ds (Discomforts) right now',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 31,
                      ),
                      Text(
                        'FRIDAY, 23 APR',
                        style: TextStyle(
                            fontFamily: 'Clash Grotesk',
                            color: whiteColor.withOpacity(0.3),
                            fontSize: 11,
                            fontWeight: FontWeight.w600),
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: discomfortController.discomfortList.length,
                          itemBuilder: (context, index) {
                            final discomfortData =
                                discomfortController.discomfortList[index];
                            return discomfortCard(discomfortData, index);
                          }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Column discomfortCard(Discomfort discomfortData, int index) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                  opacity: 0.5,
                  image: AssetImage('assets/images/card_gradient.png'),
                  fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
            width: double.infinity,
            child: Column(
              children: [
                //upper row
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color:
                                          Color(0xFFE6E6E6).withOpacity(0.1)),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color:
                                            Color(0xFF2657D1).withOpacity(0.1)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          height: 22,
                                          width: 22,
                                          'assets/svgs/Start-icon.svg',
                                          fit: BoxFit.cover,
                                        ),
                                        Text(
                                          'avoidant attachment',
                                          style: TextStyle(
                                              color: whiteColor,
                                              fontFamily: 'Clash Grotesk',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                width: 7,
                              ),
                              SvgPicture.asset('assets/svgs/row_seperator.svg'),
                              SizedBox(
                                width: 7,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color:
                                          Color(0xFFE6E6E6).withOpacity(0.1)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 9, vertical: 6),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color:
                                            Color(0xFF2657D1).withOpacity(0.1)),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          height: 22,
                                          width: 22,
                                          'assets/svgs/Start-icon (1).svg',
                                          fit: BoxFit.cover,
                                        ),
                                        Text(
                                          'childhood experiences',
                                          style: TextStyle(
                                              color: whiteColor,
                                              fontFamily: 'Clash Grotesk',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            border: Border.all(
                                color: whiteColor.withOpacity(0.5), width: 2)),
                      )
                    ],
                  ),
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF808080).withOpacity(0.1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF808080).withOpacity(0.03),
                  ),
                  // height: 78,
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 17, vertical: 16),
                    child: Text(
                      discomfortData.title,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Clash Grotesk',
                          fontSize: 16,
                          color: whiteColor),
                    ),
                  ),
                ),
                Container(
                  // height: 58,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF808080).withOpacity(0.1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          bottomRight: Radius.circular(24))),
                  child: ExpansionTile(
                    onExpansionChanged: (value) {
                      setState(() {
                        if (_selectedIndices.contains(index)) {
                          _selectedIndices.remove(index);
                        } else {
                          _selectedIndices.add(index);
                        }
                      });
                    },
                    iconColor: whiteColor,
                    collapsedIconColor: whiteColor,
                    title: Text(
                      'Objectives of this discomfort',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Clash Grotesk',
                          fontSize: 16,
                          color: whiteColor),
                    ),
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 17),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              whiteColor.withOpacity(0.02),
                              whiteColor.withOpacity(0.2),
                              whiteColor.withOpacity(0.02)
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            // stops: [0.0, 1.0],
                          ),
                        ),
                        child: Divider(
                          color: Colors.transparent,
                          height: 1,
                        ),
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: discomfortData.objectives.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svgs/Start-icon.svg',
                                        color: whiteColor.withOpacity(0.4),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Expanded(
                                        child: Text(
                                          // softWrap: true,
                                          discomfortData.objectives[index],
                                          style: TextStyle(
                                              fontFamily: 'Clash Grotesk',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: whiteColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  )
                                ],
                              ),
                            );
                          }),
                      SizedBox(
                        height: 14,
                      )
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 24,
                // )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 24,
        )
      ],
    );
  }
}
