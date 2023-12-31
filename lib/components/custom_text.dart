import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? textSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? alignText;
  final TextOverflow? overflow;
  final bool? softwrap;

  const CustomText({
    Key? key,
    required this.text,
    this.textSize,
    this.fontWeight,
    this.textColor,
    this.alignText,
    this.overflow,
    this.softwrap,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        fontSize: textSize,
        fontWeight: fontWeight,
        color: textColor,
      ),
      textAlign: alignText,
      overflow: overflow,
      softWrap: softwrap,
    );
  }
}

class CustomNunitoText extends StatelessWidget {
  final String text;
  final double? textSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? alignText;
  final TextOverflow? overflow;
  final bool? softwrap;
  final int? maxline;

  const CustomNunitoText({
    Key? key,
    required this.text,
    this.textSize,
    this.fontWeight,
    this.textColor,
    this.alignText,
    this.overflow,
    this.softwrap,
    this.maxline,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.dmSans(
          textStyle: TextStyle(
        fontFamily: fontFamily,
        fontSize: textSize,
        fontWeight: fontWeight,
        color: textColor,
      )),
      maxLines: maxline,
      textAlign: alignText,
      overflow: overflow,
      softWrap: softwrap,
    );
  }
}

class CustomPoppinText extends StatelessWidget {
  final String text;
  final double? textSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? alignText;
  final TextOverflow? overflow;
  final bool? softwrap;

  const CustomPoppinText({
    Key? key,
    required this.text,
    this.textSize,
    this.fontWeight,
    this.textColor,
    this.alignText,
    this.overflow,
    this.softwrap,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
        fontFamily: fontFamily,
        fontSize: textSize,
        fontWeight: fontWeight,
        color: textColor,
      )),
      textAlign: alignText,
      overflow: overflow,
      softWrap: softwrap,
    );
  }
}

class CustomInterText extends StatelessWidget {
  final String text;
  final double? textSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Color? textColor;
  final TextAlign? alignText;
  final TextOverflow? overflow;
  final bool? softwrap;

  const CustomInterText({
    Key? key,
    required this.text,
    this.textSize,
    this.fontWeight,
    this.textColor,
    this.alignText,
    this.overflow,
    this.softwrap,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
        fontFamily: fontFamily,
        fontSize: textSize,
        fontWeight: fontWeight,
        color: textColor,
      )),
      textAlign: alignText,
      overflow: overflow,
      softWrap: softwrap,
    );
  }
}
