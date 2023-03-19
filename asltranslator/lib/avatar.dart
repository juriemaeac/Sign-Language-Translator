import 'package:asltranslator/constants.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatefulWidget {
  const AvatarScreen({super.key});

  @override
  State<AvatarScreen> createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
                      height: height / 3,
                    ),
                    Container(
                      height: height * 0.1,
                      width: width,
                      child: Stack(
                        children: [
                          Container(
                            width: width / 5 * 5,
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          Container(
                            width: width / 5 * 4,
                            decoration: BoxDecoration(
                              color: AppColors.lightblue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          Container(
                            width: width / 5 * 3,
                            decoration: BoxDecoration(
                              color: AppColors.lightlightblue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          Container(
                            width: width / 5 * 2,
                            decoration: BoxDecoration(
                              color: AppColors.lightlightlightblue,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          Container(
                            width: width / 5,
                            decoration: BoxDecoration(
                              color: AppColors.lightorange,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                              ),
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
