import 'package:flutter/material.dart';
import 'package:ueableague/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  bool isObsecure;
  TextEditingController textController;
  double fractionWithSize;
  CustomTextField({super.key, required this.hintText, required this.isObsecure, required this.textController, required this.fractionWithSize});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: size.width * fractionWithSize),
      width: size.width - 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: black.withOpacity(0.4)),
      child: TextField(
        cursorColor: white,
        obscureText: isObsecure,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
                color: white.withOpacity(0.8),
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5,
                fontStyle: FontStyle.italic),
                
                ),
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 1.6, color: white),
      ),
    );
  }
}


class CustomSizedBox extends StatelessWidget {
  double ?height; double ?width;
  CustomSizedBox({super.key, this.height,this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: this.height, width:this.width);
  }
}
