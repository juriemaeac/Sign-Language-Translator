import 'package:asltranslator/constants.dart';
import 'package:asltranslator/main.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:tflite/tflite.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;

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
  String confidence = "";
  // List<String> aslLabels = [
  //   '0 yes',
  //   '1 no',
  //   '2 thanks',
  //   '3 welcome',
  //   '4 emergency',
  //   '5 hello',
  //   '6 sorry',
  //   '7 imfine',
  //   '8 iloveyou',
  //   '9 help',
  // ];

  // List<String> aslWordsNew = [
  //   'Yes',
  //   'No',
  //   'Thank you',
  //   'Welcome',
  //   'Emergency',
  //   'Hello',
  //   'Sorry',
  //   "I'm fine",
  //   'I love you',
  //   'Help',
  // ];

  List<String> aslLabels = [
    '0 thanks',
    '1 welcome',
    '2 emergency',
    '3 hello',
    '4 sorry',
    '5 imfine',
    '6 help',
    '7 dontwant',
    '8 okay',
    '9 drink',
  ];

  List<String> aslWordsNew = [
    'Thank you',
    'Welcome',
    'Emergency',
    'Hello',
    'Sorry',
    "I'm fine",
    'Help',
    "Don't want",
    'Okay',
    'Drink',
  ];
  ////////////////////////////////////////////////////////////////////////////////
  FlutterTts flutterTts = FlutterTts();
  String textvoice = "Scanning for A S L Word";
  ////////////////////////////////////////////////////////////////////////////////
  //late List<CameraDescription> cameras;
  late CameraController cameraController;
  CameraImage? cameraImage;
  String output = 'Scanning for A S L Word';
  bool isFrontCam = false;
  int cameraIndex = 0;
  @override
  void initState() {
    startCamera();
    loadModel();
    super.initState();
  }

  void startCamera() async {
    cameras = await availableCameras();
    cameraController = CameraController(
        cameras![cameraIndex], ResolutionPreset.low,
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
      print(recognitions);
      recognitions!.forEach((response) {
        setState(() {
          //output = response['label'];
          //textvoice = response['label'];

          String modelResponse = response['label'];
          if (aslLabels.contains(modelResponse)) {
            double confidenceValue = response['confidence'];
            double confidenceDecimal =
                confidenceValue - confidenceValue.toInt();
            List<String> confidenceArray =
                confidenceDecimal.toStringAsFixed(4).split("");
            String confidenceOutput =
                "${confidenceArray[2]}${confidenceArray[3]}.${confidenceArray[4]}${confidenceArray[5]}";
            //confidence = double.parse(confidenceOutput);
            confidence = confidenceOutput;

            int index = aslLabels.indexOf(modelResponse);
            String parsedWord = aslWordsNew[index];
            print("Recognized Word: $parsedWord Confidence: $confidence");
            output = parsedWord;
            textvoice = parsedWord;
          }
        });
      });
    }
  }

  loadModel() async {
    await Tflite.loadModel(
      model: 'assets/model_unquant.tflite',
      labels: 'assets/labels.txt',
      numThreads: 1,
      isAsset: true,
      useGpuDelegate: false,
    );
  }

  // @override
  // void dispose() async {
  //   cameraController.dispose();
  //   await Tflite.close();
  //   super.dispose();
  // }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.beige,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
              padding: const EdgeInsets.all(30),
              height: height - 100,
              width: width,
              color: AppColors.beige,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Communicate',
                      style: AppTextStyles.title.copyWith(
                        fontSize: 30,
                      )),
                  SizedBox(height: height * 0.025),
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
                    height: height * 0.025,
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
          height: height * 0.3,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                alignment: Alignment.center,
                width: width,
                height: height * 0.3,
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
                      hintStyle: AppTextStyles.title.copyWith(fontSize: 18),
                      border: InputBorder.none,
                      hintMaxLines: 3),
                  style: AppTextStyles.title.copyWith(fontSize: 18),
                  onChanged: (value) {
                    setState(() {
                      var lowerCaseValue = value.toLowerCase();
                      var capitalizedValue =
                          toBeginningOfSentenceCase(lowerCaseValue) ?? "";
                      // if (capitalizedValue == "Ok") {
                      //   capitalizedValue == "Okay";
                      // }
                      if (aslWordsNew.contains(capitalizedValue)) {
                        voicetext = capitalizedValue;
                        print("Recognized Type Word: " + value);
                        print("Recognized Type Word Capital: " +
                            capitalizedValue);
                        print("Recognized Type Word voice text: " +
                            capitalizedValue);
                        isRecognized = true;
                      } else {
                        voicetext = capitalizedValue;
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
                                  var speechResult = toBeginningOfSentenceCase(
                                          result.recognizedWords) ??
                                      "";
                                  if (result.recognizedWords == "Ok") {
                                    result.recognizedWords == "Okay";
                                  }
                                  if (aslWordsNew.contains(speechResult)) {
                                    print("Recognized Voice Word: " +
                                        result.recognizedWords);
                                    print(
                                        "Recognized Voice Word Capitalized: " +
                                            result.recognizedWords);
                                    voicetext = speechResult;
                                    voicetextEditingController.text =
                                        speechResult;
                                    isRecognized = true;
                                  }
                                  //to display text if no ASL word is found
                                  else {
                                    voicetext = speechResult;
                                    voicetextEditingController.text =
                                        speechResult;
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
                      radius: 20,
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
          height: height * 0.025,
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 20),
          height: height * 0.28,
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
                    'ASL Not Available',
                    style: AppTextStyles.title.copyWith(fontSize: 18),
                  ),
                ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        const Center(
          child: Text('Sign Language Resource Provided by SigningSavvy.',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w400)),
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
          alignment: Alignment.centerLeft,
          width: width,
          //height: width,
          decoration: BoxDecoration(
            color: AppColors.orange,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Stack(
            children: [
              Container(
                width: width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: AspectRatio(
                      aspectRatio: 1, child: CameraPreview(cameraController)),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  //width: 50,
                  // decoration: BoxDecoration(
                  //   shape: BoxShape.circle,
                  //   color: AppColors.blue,
                  // ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 20.0),
                    child: IconButton(
                      onPressed: () {
                        if (cameraIndex == 0) {
                          setState(() {
                            cameraIndex = 1;
                            startCamera();
                          });
                        } else if (cameraIndex == 1) {
                          setState(() {
                            cameraIndex = 0;
                            startCamera();
                          });
                        }
                      },
                      icon: Icon(
                        Icons.change_circle_rounded,
                        color: AppColors.orange,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: height * 0.025,
        ),
        Container(
          width: width,
          height: height - width - (height * 0.3),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                alignment: Alignment.center,
                width: width,
                height: height - width - (height * 0.3),
                decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      output,
                      style: AppTextStyles.title.copyWith(fontSize: 25),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.memory_rounded,
                            size: 15, color: AppColors.beige),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Prediction Confidence: $confidence %",
                            style: AppTextStyles.title.copyWith(
                                fontSize: 15, color: AppColors.beige)),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 25, right: 25),
                  child: CircleAvatar(
                    backgroundColor: AppColors.blue,
                    radius: 20,
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
