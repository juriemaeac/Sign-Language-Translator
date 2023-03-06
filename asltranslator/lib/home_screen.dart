import 'dart:ffi';

import 'package:asltranslator/communicate.dart';
import 'package:asltranslator/constants.dart';
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
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: AppColors.lightorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Icon(
                                Icons.person,
                                color: AppColors.blue,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        width: width,
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Column(
                            children: [
                              Text('Communicate with Deaf and Mute',
                                  style: AppTextStyles.title),
                            ],
                          ),
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
                    initialChildSize: 0.74,
                    minChildSize: 0.18,
                    maxChildSize: 0.74,
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
                                        padding: const EdgeInsets.all(30),
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
                                              height: height / 5,
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
                                                            CommunicateScreen(),
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
                                                                        CommunicateScreen(),
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
                                                  onTap: () {},
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
                                                          onPressed: () {},
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
