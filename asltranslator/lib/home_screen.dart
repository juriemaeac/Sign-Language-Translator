import 'dart:ffi';

import 'package:asltranslator/calendar/calendarSection.dart';
import 'package:asltranslator/communicate.dart';
import 'package:asltranslator/constants.dart';
import 'package:asltranslator/navAvatar.dart';
import 'package:asltranslator/navCom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: height,
          width: width,
          color: AppColors.orange,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(30),
                        //color: Colors.pink,
                        height: height / 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // Image(
                                //   image: AssetImage('assets/cadate_logo.png'),
                                //   width: 40,
                                // ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                SizedBox(
                                  width: width / 2.8,
                                  child: FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Column(
                                      children: [
                                        Text(
                                          'Welcome to',
                                          style: AppTextStyles.subtitle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width / 2,
                                  child: FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: Column(
                                      children: [
                                        Text('cadate',
                                            style: AppTextStyles.title),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              //padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                //color: AppColors.lightorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Image(
                                image: AssetImage('assets/cadate_logo.png'),
                                width: 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        width: width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CalendarSection(),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Container(
                              padding: const EdgeInsets.all(30),
                              decoration: const BoxDecoration(
                                color: AppColors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.handshake_rounded,
                                    size: 30,
                                    color: AppColors.orange,
                                  ),
                                  SizedBox(
                                    height: height * 0.02,
                                  ),
                                  Container(
                                    width: width,
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(
                                          'Communicate with Deaf and Mute',
                                          style: AppTextStyles.headings),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  Text(
                                      'Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,',
                                      textAlign: TextAlign.justify,
                                      style: AppTextStyles.body
                                          .copyWith(fontSize: 15)),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  Text(
                                      'Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet,',
                                      textAlign: TextAlign.justify,
                                      style: AppTextStyles.body
                                          .copyWith(fontSize: 15)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: AppColors.blue,
                    height: height * 0.05,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox.expand(
                  child: DraggableScrollableSheet(
                    initialChildSize: 0.15,
                    minChildSize: 0.15,
                    maxChildSize: 0.75,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return Container(
                        height: height / 1.6,
                        child: ListView.builder(
                          controller: scrollController,
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            return Stack(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(height: 5),
                                    Container(
                                      //margin: const EdgeInsets.only(top: 5),
                                      width: width,
                                      height: height / 1.6,
                                      decoration: const BoxDecoration(
                                        color: AppColors.blue,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 20),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Image(
                                                      image: AssetImage(
                                                        'assets/gestures/ok.png',
                                                      ),
                                                      width: width / 10,
                                                    ),
                                                  ],
                                                ),
                                                Image(
                                                  image: AssetImage(
                                                    'assets/gestures/i-love-you.png',
                                                  ),
                                                  width: width / 10,
                                                ),
                                                Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Image(
                                                      image: AssetImage(
                                                        'assets/gestures/hello.png',
                                                      ),
                                                      width: width / 10,
                                                    ),
                                                  ],
                                                ),
                                                Image(
                                                  image: AssetImage(
                                                    'assets/gestures/letter-h.png',
                                                  ),
                                                  width: width / 10,
                                                ),
                                                Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 30,
                                                    ),
                                                    Image(
                                                      image: AssetImage(
                                                        'assets/gestures/letter-r.png',
                                                      ),
                                                      width: width / 10,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: height * 0.03,
                                            ),
                                            Container(
                                              height: height / 1.6 / 2.4,
                                              decoration: BoxDecoration(
                                                color: AppColors.beige,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.03,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            BottomNavCom(),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    width: width / 2 - 45,
                                                    height: width / 2 - 45,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.orange,
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(20),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          height:
                                                              height * 0.001,
                                                        ),
                                                        Image(
                                                          image: AssetImage(
                                                            'assets/icons/chat.png',
                                                          ),
                                                          width: width / 7,
                                                          height: width / 7,
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        BottomNavCom(),
                                                              ),
                                                            );
                                                          },
                                                          style: ButtonStyle(
                                                            padding: MaterialStateProperty.all(
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        10.0,
                                                                    horizontal:
                                                                        15.0)),
                                                            backgroundColor:
                                                                MaterialStateProperty
                                                                    .all<Color>(
                                                                        AppColors
                                                                            .blue),
                                                            shape: MaterialStateProperty
                                                                .all<
                                                                    RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                            ),
                                                          ),
                                                          child: Container(
                                                            width:
                                                                width / 2 - 45,
                                                            child: FittedBox(
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                              child: Text(
                                                                  'Communicate',
                                                                  style:
                                                                      AppTextStyles
                                                                          .body),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            BottomNavAvatar(),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    width: width / 2 - 45,
                                                    height: width / 2 - 45,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.orange,
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(20),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          height:
                                                              height * 0.001,
                                                        ),
                                                        Image(
                                                          image: AssetImage(
                                                            'assets/icons/edit-info.png',
                                                          ),
                                                          width: width / 7,
                                                          height: width / 7,
                                                        ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        BottomNavAvatar(),
                                                              ),
                                                            );
                                                          },
                                                          style: ButtonStyle(
                                                            padding: MaterialStateProperty.all(
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        10.0,
                                                                    horizontal:
                                                                        15.0)),
                                                            backgroundColor:
                                                                MaterialStateProperty
                                                                    .all<Color>(
                                                                        AppColors
                                                                            .blue),
                                                            shape: MaterialStateProperty
                                                                .all<
                                                                    RoundedRectangleBorder>(
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                            ),
                                                          ),
                                                          child: Container(
                                                            width:
                                                                width / 2 - 45,
                                                            child: FittedBox(
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                              child: Text(
                                                                  'Avatar Editor',
                                                                  style:
                                                                      AppTextStyles
                                                                          .body),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    height: 10,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: AppColors.beige,
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
