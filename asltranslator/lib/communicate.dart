import 'package:asltranslator/constants.dart';
import 'package:flutter/material.dart';

class CommunicateScreen extends StatefulWidget {
  const CommunicateScreen({super.key});

  @override
  State<CommunicateScreen> createState() => _CommunicateScreenState();
}

class _CommunicateScreenState extends State<CommunicateScreen> {
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
          child: Text('Communicate Screen'),
        ),
      ),
    );
  }
}
