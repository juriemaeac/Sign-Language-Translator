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
          color: AppColors.beige,
          child: Text('Avatar Screen'),
        ),
      ),
    );
  }
}
