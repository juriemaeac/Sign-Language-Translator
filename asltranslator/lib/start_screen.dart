import 'package:asltranslator/constants.dart';
import 'package:asltranslator/navBar.dart';
import 'package:asltranslator/home_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BottomNavBar(),
              ),
            );
          },
          child: Container(
            //alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppColors.extraBlue,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 30),
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      'Tap Anywhere to Proceed',
                      style: AppTextStyles.title,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.12,
                    ),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(40),
                    height: MediaQuery.of(context).size.height * 0.88,
                    width: MediaQuery.of(context).size.width * 0.88,
                    decoration: BoxDecoration(
                      color: AppColors.cyan,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                          spreadRadius: 8,
                          blurRadius: 8,
                          //offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.88,
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Column(
                              children: [
                                Text(
                                  'cadate',
                                  style: AppTextStyles.headings,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          'Communicate without limits',
                          style: AppTextStyles.body,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.05,
                  bottom: MediaQuery.of(context).size.height * 0.26,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    width: MediaQuery.of(context).size.width * 0.3,
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                          spreadRadius: 8,
                          blurRadius: 8,
                          //offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image(
                      image: AssetImage('assets/handLogo.png'),
                      fit: BoxFit.cover,
                      // width: 40,
                    ),
                  ),
                ),
                Positioned(
                  right: MediaQuery.of(context).size.width * 0.06,
                  top: MediaQuery.of(context).size.height * 0.26,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.13,
                    height: MediaQuery.of(context).size.width * 0.13,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.orange,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
                          spreadRadius: 8,
                          blurRadius: 8,
                          //offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          //color: Colors.amber,
                          height: 20,
                          width: MediaQuery.of(context).size.width,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Powered by   ",
                                  style: AppTextStyles.body.copyWith(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                                Image.asset('assets/artemis.png',
                                    width: 70,
                                    //height: 100,
                                    fit: BoxFit.fill),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
