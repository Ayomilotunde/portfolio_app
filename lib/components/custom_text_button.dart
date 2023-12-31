import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import 'custom_text.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.backgroundColour,
    required this.borderColour,
    required this.textColour,
    this.textLabelSize,
    this.fontWeight,
    this.textlabelAlignment,
  }) : super(key: key);

  final String text;
  final Function() onPressed;
  final Color textColour, backgroundColour, borderColour;
  final double? textLabelSize;
  final FontWeight? fontWeight;
  final TextAlign? textlabelAlignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 47.0,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: textColour,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          side: kLightBorderSide.copyWith(
            color: borderColour,
          ),
          backgroundColor: backgroundColour,
        ),
        child: CustomText(
          text: text,
          fontWeight: fontWeight,
          textSize: textLabelSize,
          alignText: textlabelAlignment,
        ),
      ),
    );
  }
}
