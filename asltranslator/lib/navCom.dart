import 'package:asltranslator/avatar.dart';
import 'package:asltranslator/communicate.dart';
import 'package:asltranslator/constants.dart';
import 'package:asltranslator/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavCom extends StatefulWidget {
  @override
  _BottomNavComState createState() => _BottomNavComState();
}

class _BottomNavComState extends State<BottomNavCom> {
  //int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  int _currentIndex = 0;
  List<Widget> _pages = <Widget>[];

  @override
  void initState() {
    _pages.add(const CommunicateScreen());
    _pages.add(const HomeScreen());
    _pages.add(const AvatarScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _currentIndex,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.chat,
                size: 30,
                color: _currentIndex == 0
                    ? AppColors.beige
                    : _currentIndex == 1
                        ? AppColors.blue
                        : AppColors.beige),
            Icon(Icons.home,
                size: 30,
                color: _currentIndex == 0
                    ? AppColors.beige
                    : _currentIndex == 1
                        ? AppColors.blue
                        : AppColors.beige),
            Icon(Icons.person_rounded,
                size: 30,
                color: _currentIndex == 0
                    ? AppColors.beige
                    : _currentIndex == 1
                        ? AppColors.blue
                        : AppColors.beige),
          ],
          color: _currentIndex == 0
              ? AppColors.blue
              : _currentIndex == 1
                  ? AppColors.beige
                  : AppColors.blue,
          buttonBackgroundColor: AppColors.orange,
          backgroundColor: _currentIndex == 0
              ? AppColors.beige
              : _currentIndex == 1
                  ? AppColors.blue
                  : AppColors.beige,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: _pages[_currentIndex]);
  }
}
