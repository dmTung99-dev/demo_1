import 'package:demo_1/models/intro_model.dart';
import 'package:demo_1/view/widget/button_circle_widget.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  int currentIndex = 0;

  void onPressSetting () {
    // ignore: avoid_print
    print('You click right here!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              SizedBox(
                // height: 200,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(introList[currentIndex].image),
                          const SizedBox(height: 40,),
                          Text(introList[currentIndex].title, style: TextStyle(),),
                          const SizedBox(height: 20,),
                          Text(introList[currentIndex].subtitle),
                        ],
                      ),
                )
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 150,
                child: Align(
                  alignment: Alignment.center,
                  child: ButtonCircleWidget(icon: "assets/images/arrow_next_icon.png", onPress: onPressSetting)),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/zaps_icon.png", width: 34, height: 34,),
                    const Text('Nordic Vacation Sponsor', style: TextStyle(fontSize: 14, fontFamily: 'PoppinsRegular'),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}