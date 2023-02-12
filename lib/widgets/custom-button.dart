import 'package:flutter/material.dart';
import 'package:ueableague/constants/constants.dart';

class CustomButton extends StatefulWidget {
  Color buttoncolor;
  String buttonText;
  double buttonHorizontalPadding;
  double buttonVerticalPadding;
  Function onPressed;
  double fontSize;
  CustomButton(
      {super.key,
      required this.buttoncolor,
      required this.buttonText,
      required this.buttonHorizontalPadding,
      required this.buttonVerticalPadding,
      required this.onPressed,
      required this.fontSize});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.onPressed;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: widget.buttonVerticalPadding,
            horizontal: widget.buttonHorizontalPadding),
            decoration: BoxDecoration(color: widget.buttoncolor, borderRadius: BorderRadius.circular(17)),
        child: Text(
          widget.buttonText,
          style: TextStyle(
              fontSize: widget.fontSize, color: buttonTextColor, letterSpacing: 1.5, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
