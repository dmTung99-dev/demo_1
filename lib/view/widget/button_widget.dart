import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final String lable;
  final String icon;
  final VoidCallback onPress;
  final Color backgroundColor;

  const ButtonWidget({
    Key? key,
    required this.lable,
    this.icon = '',
    required this.onPress,
    this.backgroundColor = Colors.blue,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ButtonWidget createState() => _ButtonWidget();
}

class _ButtonWidget extends State<ButtonWidget> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.icon.isNotEmpty) ...[
              Image.asset(widget.icon, width: 22, height: 22),
              const SizedBox(width: 10),
            ],
            Text(widget.lable, style: const TextStyle( fontSize: 16, color: Colors.white, fontFamily: 'PoppinsMedium', ))
          ],
        ),
      ),
    );
  }
}