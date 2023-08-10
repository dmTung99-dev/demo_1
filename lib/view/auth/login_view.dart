import 'dart:html';

import 'package:demo_1/view/widget/input_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SizedBox(
        child:  Padding(
          padding: const EdgeInsets.fromLTRB(11,50,11,50),
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
              const SizedBox(height: 20,),
              InputWidget(
                lable: 'E-mail address',
                hintText: 'Enter email',
                controller: emailController,
                iconInput: 'assets/images/email_icon.png',
              ),
              const SizedBox(height: 20,),
              InputWidget(
                lable: 'Password',
                hintText: 'Enter password',
                controller: passwordController,
                iconInput: 'assets/images/pass_word_icon.png',
              ),
              const SizedBox(height: 20,),
              InputWidget(
                lable: 'Authenticate',
                hintText: 'Travel blogger',
                controller: passwordController,
                iconInput: 'assets/images/pass_word_icon.png',
              ),
            ],
          ),
        )
      ),
    );
  }
}
