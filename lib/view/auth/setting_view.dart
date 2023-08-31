import 'package:demo_1/view/widget/button_widget.dart';
import 'package:demo_1/view/widget/input_widget.dart';
import 'package:demo_1/view/widget/suffix_buttton_widget.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onPressSetting () {
    // ignore: avoid_print
    print('You click right here!');
  }
  void onPressChangePassword () {
    // ignore: avoid_print
    print('You clicked change password!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(11,50,11,50),
        child: Stack(
          children: [
            SizedBox(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                    width: 24,
                    child: Icon(Icons.arrow_back)
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Alane love', style: TextStyle(fontSize: 26, fontFamily: 'PoppinsSemiBold'),),
                      Image.asset('assets/images/alan_love_avatar.png', width: 47, height: 47,)
                    ],
                  ),
                  const SizedBox( height: 20,),
                  InputWidget(
                    lable: 'E-mail address',
                    hintText: 'Enter email',
                    controller: emailController,
                    iconInput: 'assets/images/email_icon.png',
                  ),
                  InputWidget(
                    lable: 'Password',
                    hintText: 'Enter password',
                    controller: passwordController,
                    iconInput: 'assets/images/pass_word_icon.png',
                    isPassword: true,
                    suffixButton: SuffixButton(
                      lable: 'Change',
                      onPress: onPressChangePassword,
                    ),
                  ),
                  InputWidget(
                    lable: 'Authenticate',
                    hintText: 'Travel blogger',
                    controller: passwordController,
                    iconInput: 'assets/images/pass_word_icon.png',
                  ),
                ],
              )
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ButtonWidget(
                lable: 'Save Settings',
                onPress: onPressSetting,
                ),
              )
          ],
        ),
      ),
    );
  }
}
