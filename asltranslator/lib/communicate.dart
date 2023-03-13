import 'package:asltranslator/constants.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:tflite/tflite.dart';

class CommunicateScreen extends StatefulWidget {
  const CommunicateScreen({super.key});

  @override
  State<CommunicateScreen> createState() => _CommunicateScreenState();
}

class _CommunicateScreenState extends State<CommunicateScreen> {
  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;
  ////////////////////////////////////////////////////////////////////////////////
  SpeechToText speechToText = SpeechToText();
  var voicetext = 'Type your text here\nor\nHold the mic to speak';
  String hintText = 'Type your text here\nor\nHold the mic to speak';
  TextEditingController voicetextEditingController = TextEditingController();
  var isListening = false;
  bool isRecognized = false;
  bool isASL = true;
  List<String> aslWords = [
    'hello',
    'goodbye',
    'emergency',
    'good afternoon',
    'good evening',
    'good morning',
    'help',
    'how are you',
    "i'm fine",
    'sorry',
    'welcome',
    'thank you'
  ];
  ////////////////////////////////////////////////////////////////////////////////
  FlutterTts flutterTts = FlutterTts();
  String textvoice = "i'm fine";
  ////////////////////////////////////////////////////////////////////////////////
  late List<CameraDescription> cameras;
  late CameraController cameraController;
  CameraImage? cameraImage;
  String output = '';
  bool isFrontCam = false;

  @override
  void initState() {
    startCamera();
    loadModel();
    super.initState();
  }

  void startCamera() async {
    cameras = await availableCameras();
    cameraController = CameraController(cameras[0], ResolutionPreset.medium,
        enableAudio: false);
    await cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {
        cameraController.startImageStream((imageFromStream) {
          cameraImage = imageFromStream;
          runModel();
        });
      });
    }).catchError((e) {
      print(e);
    });
  }

  runModel() async {
    if (cameraImage != null) {
      var recognitions = await Tflite.runModelOnFrame(
        bytesList: cameraImage!.planes.map((plane) {
          return plane.bytes;
        }).toList(),
        imageHeight: cameraImage!.height,
        imageWidth: cameraImage!.width,
        imageMean: 127.5,
        imageStd: 127.5,
        rotation: 90,
        numResults: 2,
        threshold: 0.1,
        asynch: true,
      );
      recognitions!.forEach((response) {
        setState(() {
          output = response['label'];
          textvoice = response['label'];
        });
      });
    }
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/model_unquant.tflite',
      labels: 'assets/labels.txt',
    );
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beige,
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,

      //   elevation: 0,
      //   title: Padding(
      //     padding: const EdgeInsets.only(left: 15, top: 30),
      //     child: Text('Communicate',
      //         style: AppTextStyles.title.copyWith(
      //           fontSize: 30,
      //         )),
      //   ),
      //   backgroundColor: AppColors.beige,
      //   // leading: IconButton(
      //   //   icon: const Icon(
      //   //     Icons.arrow_back_ios,
      //   //     color: AppColors.blue,
      //   //     size: 20,
      //   //   ),
      //   //   onPressed: () {
      //   //     Navigator.pop(context);
      //   //   },
      //   // ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              padding: const EdgeInsets.all(30),
              height: height - 80,
              width: width,
              color: AppColors.beige,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Communicate',
                      style: AppTextStyles.title.copyWith(
                        fontSize: 30,
                      )),
                  SizedBox(height: height * 0.03),
                  Container(
                    height: height * 0.05,
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: height * 0.05,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                            color: isASL ? AppColors.blue : AppColors.orange,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              isASL ? 'English' : 'ASL',
                              style: isASL
                                  ? AppTextStyles.body
                                  : AppTextStyles.title,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isASL = !isASL;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.arrow_forward,
                                color: AppColors.blue,
                                size: 20,
                              ),
                              Icon(
                                Icons.arrow_back,
                                color: AppColors.blue,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: height * 0.05,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                            color: isASL ? AppColors.orange : AppColors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              isASL ? 'ASL' : 'English',
                              style: isASL
                                  ? AppTextStyles.title
                                  : AppTextStyles.body,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  isASL ? speechToASL() : asltoSpeech(),
                ],
              )),
        ),
      ),
    );
  }

  Widget speechToASL() {
    return Column(
      children: [
        Container(
          width: width,
          height: height * 0.32,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                alignment: Alignment.center,
                width: width,
                height: height * 0.32,
                decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextField(
                  controller: voicetextEditingController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: AppTextStyles.title,
                      border: InputBorder.none,
                      hintMaxLines: 3),
                  style: AppTextStyles.title,
                  onChanged: (value) {
                    setState(() {
                      var lowerCaseValue = value.toLowerCase();
                      if (aslWords.contains(lowerCaseValue)) {
                        voicetext = lowerCaseValue;
                        print("Recognized Type Word: " + value);
                        print("Recognized Type Word lowercase: " +
                            lowerCaseValue);
                        print("Recognized Type Word voice text: " + voicetext);
                        isRecognized = true;
                      } else {
                        voicetext = lowerCaseValue;
                        isRecognized = false;
                      }
                    });
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: AvatarGlow(
                  endRadius: 65.0,
                  animate: isListening,
                  duration: const Duration(milliseconds: 2000),
                  glowColor: AppColors.blue,
                  repeat: true,
                  repeatPauseDuration: const Duration(milliseconds: 100),
                  showTwoGlows: true,
                  child: GestureDetector(
                    onTapDown: (details) async {
                      if (!isListening) {
                        var available = await speechToText.initialize();
                        hintText = '';
                        if (available) {
                          setState(() {
                            isListening = true;
                            speechToText.listen(
                              onResult: (result) {
                                setState(() {
                                  print(result.recognizedWords);
                                  if (aslWords
                                      .contains(result.recognizedWords)) {
                                    print("Recognized Voice Word: " +
                                        result.recognizedWords);
                                    voicetext = result.recognizedWords;
                                    voicetextEditingController.text =
                                        result.recognizedWords;
                                    isRecognized = true;
                                  }
                                  //to display text if no ASL word is found
                                  else {
                                    voicetext = result.recognizedWords;
                                    voicetextEditingController.text =
                                        result.recognizedWords;
                                    isRecognized = false;
                                  }
                                });
                              },
                            );
                          });
                        }
                      }
                    },
                    onTapUp: (details) {
                      setState(() {
                        isListening = false;
                      });
                      speechToText.stop();
                    },
                    child: CircleAvatar(
                      backgroundColor: AppColors.blue,
                      radius: 30,
                      child: Icon(
                        isListening ? Icons.mic : Icons.mic_none,
                        color: AppColors.beige,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          height: height * 0.32,
          width: width,
          decoration: BoxDecoration(
            color: AppColors.orange,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: isRecognized
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/aslSamples/$voicetext.gif',
                    fit: BoxFit.cover,
                  ))
              : Center(
                  child: Text(
                    'No ASL Word Found',
                    style: AppTextStyles.title,
                  ),
                ),
        ),
      ],
    );
  }

  Widget asltoSpeech() {
    speak(String textvoice) async {
      await flutterTts.setLanguage("en-US");
      await flutterTts.setPitch(1);
      await flutterTts.speak(textvoice);
    }

    if (!cameraController.value.isInitialized) {
      return SizedBox();
    }
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: width,
          height: height * 0.32,
          decoration: BoxDecoration(
            //color: AppColors.orange,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: AspectRatio(
              aspectRatio: cameraController.value.aspectRatio,
              child: CameraPreview(cameraController),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Container(
          width: width,
          height: height * 0.32,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                alignment: Alignment.center,
                width: width,
                height: height * 0.32,
                decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Text(
                  output ?? 'Scanning for ASL Word',
                  style: AppTextStyles.title,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 30, right: 30),
                  child: CircleAvatar(
                    backgroundColor: AppColors.blue,
                    radius: 30,
                    child: IconButton(
                      onPressed: () {
                        speak(textvoice);
                      },
                      icon: const Icon(
                        Icons.volume_up,
                        color: AppColors.beige,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
