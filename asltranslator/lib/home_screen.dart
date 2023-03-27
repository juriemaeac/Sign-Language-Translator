import 'dart:ffi';
import 'dart:math';
import 'package:asltranslator/aslLibrary.dart';
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
  List alphabets = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
  ];

  int randIndex = 0;
  String pickedLetter = 'A';

  void randomize() {
    randIndex = Random().nextInt(alphabets.length);
    pickedLetter = alphabets[randIndex];
    print("Picked Letter: " + pickedLetter);
  }

  @override
  void initState() {
    randomize();
  }

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
                                          style: AppTextStyles.title
                                              .copyWith(color: AppColors.brown),
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
                              height: height / 2.6,
                              padding: const EdgeInsets.all(30),
                              decoration: const BoxDecoration(
                                color: AppColors.blue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
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
                                        'The CADATE (Communication App for Deaf and Mute) is a mobile application that can assist hearing, deaf, and mute people in breaking down communication barriers. CADATE enables hearing, deaf, and mute people by giving a platform where they can communicate and understand each other. ',
                                        textAlign: TextAlign.justify,
                                        style: AppTextStyles.body
                                            .copyWith(fontSize: 15)),
                                    SizedBox(
                                      height: height * 0.03,
                                    ),
                                    Text(
                                        'This is a platform where they can express themselves freely with the unavailability of internet connection and costs nothing for everyone to use.',
                                        textAlign: TextAlign.justify,
                                        style: AppTextStyles.body
                                            .copyWith(fontSize: 15)),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: width,
                  height: height * 0.05,
                  color: AppColors.blue,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox.expand(
                  child: DraggableScrollableSheet(
                    initialChildSize: 0.145,
                    minChildSize: 0.145,
                    maxChildSize: 0.75,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return Container(
                        height: height / 1.57,
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
                                      height: height / 1.57,
                                      decoration: const BoxDecoration(
                                        color: AppColors.blue,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 15),
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
                                              height: height * 0.034,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(
                                                  top: 10, bottom: 20),
                                              height: height / 1.5 / 2.4,
                                              width: width,
                                              decoration: BoxDecoration(
                                                color: AppColors.beige,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 20),
                                                        child: Text(
                                                          'Alphabet Randomizer',
                                                          style: AppTextStyles
                                                              .title
                                                              .copyWith(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                        ),
                                                      ),
                                                      IconButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              randomize();
                                                              print(
                                                                  'clicked button pickedLetter: $pickedLetter');
                                                            });
                                                          },
                                                          icon: Icon(
                                                            Icons
                                                                .replay_rounded,
                                                            color:
                                                                AppColors.blue,
                                                            size: 20,
                                                          )),
                                                    ],
                                                  ),
                                                  Stack(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                                .symmetric(
                                                            horizontal: 20),
                                                        height: height / 6,
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              const BorderRadius
                                                                  .all(
                                                            Radius.circular(20),
                                                          ),
                                                          child: Image(
                                                            image: AssetImage(
                                                              'assets/aslSamples/$pickedLetter.gif',
                                                            ),
                                                            width: width - 40,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 20,
                                                                  right: 40),
                                                          child: Text(
                                                            pickedLetter,
                                                            style: AppTextStyles
                                                                .headings
                                                                .copyWith(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                    fontSize:
                                                                        30,
                                                                    color: AppColors
                                                                        .orange),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: height * 0.026,
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
                                                            15),
                                                    width: width / 2 - 45,
                                                    height: height / 5.7,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.orange,
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(20),
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                                  255, 0, 0, 0)
                                                              .withOpacity(0.1),
                                                          spreadRadius: 5,
                                                          blurRadius: 8,
                                                          //offset: Offset(0, 3),
                                                        ),
                                                      ],
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
                                                          width: width / 8,
                                                          height: width / 8,
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
                                                                        10.0)),
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
                                                            alignment: Alignment
                                                                .center,
                                                            width:
                                                                width / 2 - 45,
                                                            child: Text(
                                                                'Communicate',
                                                                style:
                                                                    AppTextStyles
                                                                        .body),
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
                                                            ASLLibrary(),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            15),
                                                    width: width / 2 - 45,
                                                    height: height / 5.7,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.orange,
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius.circular(20),
                                                      ),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Color.fromARGB(
                                                                  255, 0, 0, 0)
                                                              .withOpacity(0.1),
                                                          spreadRadius: 5,
                                                          blurRadius: 8,
                                                          //offset: Offset(0, 3),
                                                        ),
                                                      ],
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
                                                        Icon(
                                                          Icons
                                                              .sign_language_rounded,
                                                          color:
                                                              AppColors.beige,
                                                          size: width / 8,
                                                        ),
                                                        // Image(
                                                        //   image: AssetImage(
                                                        //     'assets/icons/edit-info.png',
                                                        //   ),
                                                        //   width: width / 7,
                                                        //   height: width / 7,
                                                        // ),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        ASLLibrary(),
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
                                                                        10.0)),
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
                                                            alignment: Alignment
                                                                .center,
                                                            width:
                                                                width / 2 - 45,
                                                            child: Text(
                                                                'ASL Library',
                                                                style:
                                                                    AppTextStyles
                                                                        .body),
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
