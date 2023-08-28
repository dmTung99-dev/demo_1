import 'package:flutter/material.dart';
class SuffixButton extends StatefulWidget {
  final String lable;
  final VoidCallback onPress;

  const SuffixButton({
    Key? key,
    required this.lable,
    required this.onPress,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SuffixButtonState createState() => _SuffixButtonState();
}

class _SuffixButtonState extends State<SuffixButton> {
  void onPressChangePassword () {
    // ignore: avoid_print
    print('You clicked change password!');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressChangePassword,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(top: 5, bottom: 5, right: 10),
          constraints: BoxConstraints(maxWidth: 140),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(36)
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
            child: Text( 
              widget.lable, 
              style: TextStyle( color: Colors.white, fontSize: 14, fontFamily: 'PoppinsMedium',),),
          ),
        ),
      ),
    );
  }
}