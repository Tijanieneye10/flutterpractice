import 'package:flutter/material.dart';
import 'package:layout/custom_widget/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton{
  SignInButton({ required String text,
    required Color color,
    required Color textColor,
    required double borderRadius,
    double? height,
    required VoidCallback onPressed}):super(
  child: Text(
  text,
  style: TextStyle(color: textColor, fontSize: 20.0,),
  ),
  color: color,
  height: height,
  borderRadius: borderRadius,
    onPressed: onPressed
  );
}