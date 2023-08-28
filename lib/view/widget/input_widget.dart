import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  final String lable;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final String iconInput;
  final Widget? suffixButton;

  const InputWidget({
    Key? key,
    required this.lable,
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.suffixButton,
    required this.iconInput,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.lable, style: const TextStyle(fontSize: 14, fontFamily: 'PoppinsRegular', color: Color(0xAAADADAD)),),
          const SizedBox(height: 10,),
          SizedBox(
            height: 50,
            child: TextField(
              keyboardType: widget.keyboardType,
              obscureText: widget.isPassword,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: const TextStyle(color: Color(0xAAADADAD)),
                prefixIcon: Transform.scale(
                  scale: 0.4,
                  child: Image.asset(widget.iconInput),
                ),
                suffixIcon:   widget.suffixButton != null ? Container(
                  constraints: BoxConstraints(maxWidth: 150),
                  child: widget.suffixButton,
                ) : null,
                border: OutlineInputBorder(
                  borderSide:const BorderSide(width: 0.5, color: Color(0xAAE9E9E9)),
                  borderRadius: BorderRadius.circular(36)
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}