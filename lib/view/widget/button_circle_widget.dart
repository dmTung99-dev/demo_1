import 'package:flutter/material.dart';

class ButtonCircleWidget extends StatefulWidget {
  final String icon;
  final VoidCallback onPress;
  final Color backgroundColor;

  const ButtonCircleWidget({
    Key? key,
    required this.icon,
    required this.onPress,
    this.backgroundColor = const Color(0xAA0373F3),
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ButtonCircleWidget createState() => _ButtonCircleWidget();
}

class _ButtonCircleWidget extends State<ButtonCircleWidget> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.icon, width: 34, height: 34),
          ],
        ),
      ),
    );
  }
}