import 'package:asltranslator/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ASLLibrary extends StatefulWidget {
  const ASLLibrary({super.key});

  @override
  State<ASLLibrary> createState() => _ASLLibraryState();
}

class _ASLLibraryState extends State<ASLLibrary> {
  FlutterTts flutterTts = FlutterTts();
  speak(String textvoice) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak(textvoice);
  }

  Color _containerColorA = AppColors.orange;
  Color _containerColorB = AppColors.orange;
  Color _containerColorC = AppColors.orange;
  Color _containerColorD = AppColors.orange;
  Color _containerColorE = AppColors.orange;
  Color _containerColorF = AppColors.orange;
  Color _containerColorG = AppColors.orange;
  Color _containerColorH = AppColors.orange;
  Color _containerColorI = AppColors.orange;
  Color _containerColorJ = AppColors.orange;
  Color _containerColorK = AppColors.orange;
  Color _containerColorL = AppColors.orange;
  Color _containerColorM = AppColors.orange;
  Color _containerColorN = AppColors.orange;
  Color _containerColorO = AppColors.orange;
  Color _containerColorP = AppColors.orange;
  Color _containerColorQ = AppColors.orange;
  Color _containerColorR = AppColors.orange;
  Color _containerColorS = AppColors.orange;
  Color _containerColorT = AppColors.orange;
  Color _containerColorU = AppColors.orange;
  Color _containerColorV = AppColors.orange;
  Color _containerColorW = AppColors.orange;
  Color _containerColorX = AppColors.orange;
  Color _containerColorY = AppColors.orange;
  Color _containerColorZ = AppColors.orange;

  Color textColorA = AppColors.blue;
  Color textColorB = AppColors.blue;
  Color textColorC = AppColors.blue;
  Color textColorD = AppColors.blue;
  Color textColorE = AppColors.blue;
  Color textColorF = AppColors.blue;
  Color textColorG = AppColors.blue;
  Color textColorH = AppColors.blue;
  Color textColorI = AppColors.blue;
  Color textColorJ = AppColors.blue;
  Color textColorK = AppColors.blue;
  Color textColorL = AppColors.blue;
  Color textColorM = AppColors.blue;
  Color textColorN = AppColors.blue;
  Color textColorO = AppColors.blue;
  Color textColorP = AppColors.blue;
  Color textColorQ = AppColors.blue;
  Color textColorR = AppColors.blue;
  Color textColorS = AppColors.blue;
  Color textColorT = AppColors.blue;
  Color textColorU = AppColors.blue;
  Color textColorV = AppColors.blue;
  Color textColorW = AppColors.blue;
  Color textColorX = AppColors.blue;
  Color textColorY = AppColors.blue;
  Color textColorZ = AppColors.blue;

  bool isTappedA = false;
  bool isTappedB = false;
  bool isTappedC = false;
  bool isTappedD = false;
  bool isTappedE = false;
  bool isTappedF = false;
  bool isTappedG = false;
  bool isTappedH = false;
  bool isTappedI = false;
  bool isTappedJ = false;
  bool isTappedK = false;
  bool isTappedL = false;
  bool isTappedM = false;
  bool isTappedN = false;
  bool isTappedO = false;
  bool isTappedP = false;
  bool isTappedQ = false;
  bool isTappedR = false;
  bool isTappedS = false;
  bool isTappedT = false;
  bool isTappedU = false;
  bool isTappedV = false;
  bool isTappedW = false;
  bool isTappedX = false;
  bool isTappedY = false;
  bool isTappedZ = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.beige,
      appBar: AppBar(
        backgroundColor: AppColors.beige,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.blue,
              size: 20,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sign_language_rounded,
              color: AppColors.blue,
              size: 20,
            ),
            SizedBox(width: 10),
            Text(
              'ASL Library',
              style: AppTextStyles.title.copyWith(
                fontSize: 20,
              ),
            ),
            SizedBox(width: 50),
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: height - 60,
            width: width,
            color: AppColors.beige,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row(
                    //   children: [
                    //     GestureDetector(
                    //       onTap: () {
                    //         Navigator.pop(context);
                    //       },
                    //       child: Icon(
                    //         Icons.arrow_back_ios,
                    //         color: AppColors.blue,
                    //       ),
                    //     ),
                    //     SizedBox(width: width * 0.03),
                    //     Text('ASL Library',
                    //         style: AppTextStyles.title.copyWith(
                    //           fontSize: 30,
                    //         )),
                    //   ],
                    // ),

                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = true;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;

                              _containerColorA =
                                  isTappedA ? AppColors.blue : AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorA =
                                  isTappedA ? AppColors.orange : AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('A');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'A',
                            containerColor: _containerColorA,
                            textColor: textColorA,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = true;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorB =
                                  isTappedB ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorB =
                                  isTappedB ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('B');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'B',
                            containerColor: _containerColorB,
                            textColor: textColorB,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = true;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorC =
                                  isTappedC ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorC =
                                  isTappedC ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('C');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'C',
                            containerColor: _containerColorC,
                            textColor: textColorC,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = true;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorD =
                                  isTappedD ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorD =
                                  isTappedD ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('D');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'D',
                            containerColor: _containerColorD,
                            textColor: textColorD,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = true;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorE =
                                  isTappedE ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorE =
                                  isTappedE ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('E');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'E',
                            containerColor: _containerColorE,
                            textColor: textColorE,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = true;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorF =
                                  isTappedF ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorF =
                                  isTappedF ? AppColors.orange : AppColors.blue;

                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('F');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'F',
                            containerColor: _containerColorF,
                            textColor: textColorF,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = true;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorG =
                                  isTappedG ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorG =
                                  isTappedG ? AppColors.orange : AppColors.blue;

                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('G');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'G',
                            containerColor: _containerColorG,
                            textColor: textColorG,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = true;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorH =
                                  isTappedH ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorH =
                                  isTappedH ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('H');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'H',
                            containerColor: _containerColorH,
                            textColor: textColorH,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = true;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorI =
                                  isTappedI ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorI =
                                  isTappedI ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('I');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'I',
                            containerColor: _containerColorI,
                            textColor: textColorI,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = true;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorJ =
                                  isTappedJ ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorJ =
                                  isTappedJ ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('J');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'J',
                            containerColor: _containerColorJ,
                            textColor: textColorJ,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = true;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorK =
                                  isTappedK ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorK =
                                  isTappedK ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('K');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'K',
                            containerColor: _containerColorK,
                            textColor: textColorK,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = true;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorL =
                                  isTappedL ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorL =
                                  isTappedL ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('L');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'L',
                            containerColor: _containerColorL,
                            textColor: textColorL,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = true;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorM =
                                  isTappedM ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorM =
                                  isTappedM ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('M');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'M',
                            containerColor: _containerColorM,
                            textColor: textColorM,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = true;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorN =
                                  isTappedN ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorN =
                                  isTappedN ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('N');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'N',
                            containerColor: _containerColorN,
                            textColor: textColorN,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = true;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorO =
                                  isTappedO ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;

                              textColorO =
                                  isTappedO ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;
                              speak('O');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'O',
                            containerColor: _containerColorO,
                            textColor: textColorO,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = true;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorP =
                                  isTappedP ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;
                              textColorP =
                                  isTappedP ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;
                              speak('P');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'P',
                            containerColor: _containerColorP,
                            textColor: textColorP,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = true;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorQ =
                                  isTappedQ ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;
                              textColorQ =
                                  isTappedQ ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;
                              speak('Q');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'Q',
                            containerColor: _containerColorQ,
                            textColor: textColorQ,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = true;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorR =
                                  isTappedR ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;
                              textColorR =
                                  isTappedR ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('R');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'R',
                            containerColor: _containerColorR,
                            textColor: textColorR,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = true;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorS =
                                  isTappedS ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;
                              textColorS =
                                  isTappedS ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('S');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'S',
                            containerColor: _containerColorS,
                            textColor: textColorS,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = true;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorT =
                                  isTappedT ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;
                              textColorT =
                                  isTappedT ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('T');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'T',
                            containerColor: _containerColorT,
                            textColor: textColorT,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = true;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorU =
                                  isTappedU ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;
                              textColorU =
                                  isTappedU ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('U');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'U',
                            containerColor: _containerColorU,
                            textColor: textColorU,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = true;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorV =
                                  isTappedV ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;
                              textColorV =
                                  isTappedV ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('V');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'V',
                            containerColor: _containerColorV,
                            textColor: textColorV,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = true;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorW =
                                  isTappedW ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;
                              textColorW =
                                  isTappedW ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('W');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'W',
                            containerColor: _containerColorW,
                            textColor: textColorW,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = true;
                              isTappedY = false;
                              isTappedZ = false;
                              _containerColorX =
                                  isTappedX ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              _containerColorZ = AppColors.orange;
                              textColorX =
                                  isTappedX ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorY = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('X');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'X',
                            containerColor: _containerColorX,
                            textColor: textColorX,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = true;
                              isTappedZ = false;
                              _containerColorY =
                                  isTappedY ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorZ = AppColors.orange;
                              textColorY =
                                  isTappedY ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorZ = AppColors.blue;

                              speak('Y');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'Y',
                            containerColor: _containerColorY,
                            textColor: textColorY,
                          ),
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isTappedA = false;
                              isTappedB = false;
                              isTappedC = false;
                              isTappedD = false;
                              isTappedE = false;
                              isTappedF = false;
                              isTappedG = false;
                              isTappedH = false;
                              isTappedI = false;
                              isTappedJ = false;
                              isTappedK = false;
                              isTappedL = false;
                              isTappedM = false;
                              isTappedN = false;
                              isTappedO = false;
                              isTappedP = false;
                              isTappedQ = false;
                              isTappedR = false;
                              isTappedS = false;
                              isTappedT = false;
                              isTappedU = false;
                              isTappedV = false;
                              isTappedW = false;
                              isTappedX = false;
                              isTappedY = false;
                              isTappedZ = true;
                              _containerColorZ =
                                  isTappedZ ? AppColors.blue : AppColors.orange;
                              _containerColorA = AppColors.orange;
                              _containerColorB = AppColors.orange;
                              _containerColorC = AppColors.orange;
                              _containerColorD = AppColors.orange;
                              _containerColorE = AppColors.orange;
                              _containerColorF = AppColors.orange;
                              _containerColorG = AppColors.orange;
                              _containerColorH = AppColors.orange;
                              _containerColorI = AppColors.orange;
                              _containerColorJ = AppColors.orange;
                              _containerColorK = AppColors.orange;
                              _containerColorL = AppColors.orange;
                              _containerColorM = AppColors.orange;
                              _containerColorN = AppColors.orange;
                              _containerColorO = AppColors.orange;
                              _containerColorP = AppColors.orange;
                              _containerColorQ = AppColors.orange;
                              _containerColorR = AppColors.orange;
                              _containerColorS = AppColors.orange;
                              _containerColorT = AppColors.orange;
                              _containerColorU = AppColors.orange;
                              _containerColorV = AppColors.orange;
                              _containerColorW = AppColors.orange;
                              _containerColorX = AppColors.orange;
                              _containerColorY = AppColors.orange;
                              textColorZ =
                                  isTappedZ ? AppColors.orange : AppColors.blue;
                              textColorA = AppColors.blue;
                              textColorB = AppColors.blue;
                              textColorC = AppColors.blue;
                              textColorD = AppColors.blue;
                              textColorE = AppColors.blue;
                              textColorF = AppColors.blue;
                              textColorG = AppColors.blue;
                              textColorH = AppColors.blue;
                              textColorI = AppColors.blue;
                              textColorJ = AppColors.blue;
                              textColorK = AppColors.blue;
                              textColorL = AppColors.blue;
                              textColorM = AppColors.blue;
                              textColorN = AppColors.blue;
                              textColorO = AppColors.blue;
                              textColorP = AppColors.blue;
                              textColorQ = AppColors.blue;
                              textColorR = AppColors.blue;
                              textColorS = AppColors.blue;
                              textColorT = AppColors.blue;
                              textColorU = AppColors.blue;
                              textColorV = AppColors.blue;
                              textColorW = AppColors.blue;
                              textColorX = AppColors.blue;
                              textColorY = AppColors.blue;

                              speak('Z');
                            });
                          }),
                          child: AlphabetWidget(
                            alphabet: 'Z',
                            containerColor: _containerColorZ,
                            textColor: textColorZ,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    Center(
                      child: Text(
                          'Sign Language Resource Provided by SigningSavvy.',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(height: height * 0.03),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AlphabetWidget extends StatelessWidget {
  final String alphabet;
  final Color containerColor;
  final Color textColor;
  AlphabetWidget(
      {super.key,
      required this.alphabet,
      required this.containerColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 2 - 40,
      height: height / 5,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 68, 68, 68).withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 8,
            //offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: width / 2 - 40,
                height: height / 5 - 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image(
                      image: AssetImage('assets/aslAlphabet/$alphabet.gif'),
                      fit: BoxFit.cover),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  width: 30,
                  height: 30,
                  child: Image(
                    image: AssetImage('assets/aslAlphabet/$alphabet.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          Text(alphabet,
              style: AppTextStyles.title.copyWith(
                fontSize: 20,
                color: textColor,
              )),
        ],
      ),
    );
  }
}
