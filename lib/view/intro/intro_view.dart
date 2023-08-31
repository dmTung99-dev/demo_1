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
    setState(() {
      currentIndex++;
      print('You click right here! Current index: $currentIndex');
    });
    if (currentIndex == 3) {
      currentIndex = 0;
      Navigator.pushReplacementNamed(context, '/home');
    }
    // ignore: avoid_print
    // print('You click right here!: $currentIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 50, 15, 15),
          child: Stack(
            children: [
              SizedBox(
                // height: 200,
                child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(introList[currentIndex].image, height: 270, width: double.infinity, fit: BoxFit.contain,),
                        const SizedBox(height: 35,),
                        Text(introList[currentIndex].title, style: const TextStyle(fontSize: 25, fontFamily: 'PoppinsSemiBold',), textAlign: TextAlign.center,),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(introList[currentIndex].subtitle, style: const TextStyle(fontSize: 18, fontFamily: 'PoppinsRegular', color: Color(0xAAB4B4B4)), textAlign: TextAlign.center,),
                        ),
                      ],
                    )
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 100,
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