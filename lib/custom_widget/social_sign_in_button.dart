import 'package:flutter/material.dart';
import 'package:layout/custom_widget/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton{
  SocialSignInButton({
    required String text,
    required String assetName,
    required Color color,
    required Color textColor,
    required double borderRadius,
    double? height,
    required VoidCallback onPressed})
      :assert(text != null),
      assert(assetName != null),
      super(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            assetName,
            width: 30,
          ),
          Text(text, style: TextStyle(color: textColor, fontSize: 18),),
          Opacity(
            child: Image.asset(assetName),
            opacity: 0.0,
          ),
        ],
      ),
      color: color,
      height: height,
      borderRadius: borderRadius,
      onPressed: onPressed
  );
}