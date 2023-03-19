import 'package:asltranslator/constants.dart';
import 'package:asltranslator/navBar.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatefulWidget {
  const AvatarScreen({super.key});

  @override
  State<AvatarScreen> createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  //prompt show dialog
  Future<void> _showDialog(BuildContext context) async {
    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.beige,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.construction_rounded,
                color: AppColors.orange,
                size: 40,
              ),
              SizedBox(
                height: 15,
              ),
              Text('Notice', style: AppTextStyles.headings),
            ],
          ),
          content: SingleChildScrollView(
            child: Center(
              child: Text('Avatar editor is coming soon!',
                  style: AppTextStyles.title.copyWith(fontSize: 15)),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Understood',
                  style: AppTextStyles.title.copyWith(fontSize: 15)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BottomNavBar(),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    Future.delayed(Duration.zero, () => _showDialog(context));
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: width,
          height: height,
          color: AppColors.lightorange,
          child: Column(
            children: [
              Container(
                width: width,
                height: height / 2 - 10,
                decoration: BoxDecoration(color: AppColors.beige),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                      image: AssetImage('assets/icons/avatar.png'),
                      height: height / 2.5,
                    ),
                    Container(
                      height: height * 0.08,
                      width: width,
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 25),
                            alignment: Alignment.centerRight,
                            width: width / 5 * 5,
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Icon(
                              Icons.checkroom_rounded,
                              color: AppColors.lightorange,
                              size: 30,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 25),
                            alignment: Alignment.centerRight,
                            width: width / 5 * 4,
                            decoration: BoxDecoration(
                              color: AppColors.lightblue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Icon(
                              Icons.back_hand_rounded,
                              color: AppColors.lightorange,
                              size: 30,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 25),
                            alignment: Alignment.centerRight,
                            width: width / 5 * 3,
                            decoration: BoxDecoration(
                              color: AppColors.lightlightblue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Icon(
                              Icons.remove_red_eye_rounded,
                              color: AppColors.lightorange,
                              size: 30,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 25),
                            alignment: Alignment.centerRight,
                            width: width / 5 * 2,
                            decoration: BoxDecoration(
                              color: AppColors.lightlightlightblue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Icon(
                              Icons.hearing_rounded,
                              color: AppColors.lightorange,
                              size: 30,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: width / 5,
                            decoration: BoxDecoration(
                              color: AppColors.lightorange,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Icon(
                              Icons.face,
                              color: AppColors.blue,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                height: height / 2 - 100,
                decoration: BoxDecoration(color: AppColors.lightorange),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                            Container(
                              width: width / 4 - 25,
                              height: width / 4 - 25,
                              decoration: BoxDecoration(
                                color: AppColors.darkorange,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
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
