import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColor {
  static const Color darkBlue = Color(0xff063d54);
  static const Color black = Color(0xff282828);
  static const Color blue = Color(0xff03b0c1);
  static const Color white = Color(0xffffffff);
  static const Color purple = Color(0xff0d469f);
}

const mobileWidth = 600;

// ------------------------------------ //
//       Text Style Selection  //
// ------------------------------------ //
TextStyle mTextStyle32({Color mColor = AppColor.black, FontWeight mFontWeight = FontWeight.w600, fontFamily = "Roboto"}) {
  return TextStyle(
    fontSize: 32,
    color: mColor,
    fontWeight: mFontWeight,
    fontFamily: fontFamily,
    height: 1.1,
  );
}

TextStyle mTextStyle30({Color mColor = AppColor.black, FontWeight mFontWeight = FontWeight.w600, fontFamily = "Roboto"}) {
  return TextStyle(
    fontSize: 30,
    color: mColor,
    fontWeight: mFontWeight,
    fontFamily: fontFamily,
  );
}

TextStyle mTextStyle24({Color mColor = AppColor.darkBlue, FontWeight mFontWeight = FontWeight.w600, fontFamily = "Roboto"}) {
  return TextStyle(fontSize: 24, color: mColor, fontWeight: mFontWeight, fontFamily: fontFamily, fontStyle: FontStyle.normal);
}

TextStyle mTextStyle25(
    {Color mColor = AppColor.black, FontWeight mFontWeight = FontWeight.w600, fontFamily = "Aparajita", mLetterSpacing = 0.8}) {
  return TextStyle(
    fontWeight: mFontWeight,
    fontFamily: fontFamily,
    fontSize: 25,
    color: mColor,
    letterSpacing: mLetterSpacing,
  );
}

TextStyle mTextStyle20({Color mColor = AppColor.black, FontWeight mFontWeight = FontWeight.w600, fontFamily = "Roboto"}) {
  return TextStyle(
    fontSize: 20,
    color: mColor,
    fontWeight: mFontWeight,
    fontFamily: fontFamily,
  );
}

TextStyle mTextStyle18({Color mColor = AppColor.black, FontWeight mFontWeight = FontWeight.normal, fontFamily = "Roboto"}) {
  return TextStyle(
    fontSize: 18,
    color: mColor,
    fontWeight: mFontWeight,
    fontFamily: fontFamily,
  );
}

TextStyle mTextStyle16({Color mColor = AppColor.black, FontWeight mFontWeight = FontWeight.normal, fontFamily = "Roboto"}) {
  return TextStyle(
    fontSize: 16,
    color: mColor,
    fontWeight: mFontWeight,
    fontFamily: fontFamily,
  );
}

TextStyle mTextStyle14({Color mColor = AppColor.black, FontWeight mFontWeight = FontWeight.normal, fontFamily = "Roboto"}) {
  return TextStyle(
    fontSize: 14,
    color: mColor,
    fontWeight: mFontWeight,
    fontFamily: fontFamily,
  );
}

TextStyle mTextStyle13({Color mColor = AppColor.black, FontWeight mFontWeight = FontWeight.normal, fontFamily = "Roboto"}) {
  return TextStyle(
    fontSize: 13,
    color: mColor,
    fontWeight: mFontWeight,
    fontFamily: fontFamily,
  );
}

TextStyle mTextStyle12({Color mColor = AppColor.black, FontWeight mFontWeight = FontWeight.normal, fontFamily = "Roboto"}) {
  return TextStyle(
    fontSize: 12,
    color: mColor,
    fontWeight: mFontWeight,
    fontFamily: fontFamily,
  );
}

TextStyle mTextStyle11({Color mColor = AppColor.black, FontWeight mFontWeight = FontWeight.normal, fontFamily = "Roboto"}) {
  return TextStyle(
    fontSize: 11,
    color: mColor,
    fontWeight: mFontWeight,
    fontFamily: fontFamily,
  );
}

// ------------------------------------ //
//       Height and Width  //
// ------------------------------------ //
Widget heightSpacer({double mHeight = 10.0}) {
  return SizedBox(
    height: mHeight,
  );
}

Widget widthSpacer({double mWidth = 10.0}) {
  return SizedBox(
    width: mWidth,
  );
}

// ------------------------------------ //
//   InputDecoration Selection  //
// ------------------------------------ //

InputDecoration mInputDecoration({
  String? hint,
  String? mLabelText,
  double? mIconSize,
  Color? borderColor = AppColor.black,
  Color? filledColor = AppColor.white,
  Color? preFixColor = AppColor.blue,
  Color? suffixColor = AppColor.black,
  TextStyle? hintStyle,
  TextStyle? labelStyle,
  double radius = 10,
  Widget? prefixIcon,
  EdgeInsetsGeometry? padding,
  Widget? suffixIcon,
  String? mCounterText,
}) {
  return InputDecoration(
    filled: true,
    fillColor: filledColor,
    hintText: hint,
    hintStyle: hintStyle,
    labelText: mLabelText,
    labelStyle: labelStyle,
    prefixIcon: prefixIcon != null ? prefixIcon : null,
    prefixIconColor: preFixColor,
    counterText: mCounterText,
    contentPadding: padding,
    suffixIcon: suffixIcon != null ? suffixIcon : null,
    suffixIconColor: suffixColor,
    enabledBorder: mGetBorder(radius: radius, borderColor: borderColor!),
    focusedBorder: mGetBorder(radius: radius, borderColor: borderColor),
    errorBorder: mGetBorder(radius: radius, borderColor: borderColor),
    focusedErrorBorder: mGetBorder(radius: radius, borderColor: borderColor),
  );
}

// ------------------------------------ //
//   InputDecoration Selection  //
// ------------------------------------ //
OutlineInputBorder mGetBorder({double radius = 10, Color borderColor = Colors.grey, double borderWidth = 1}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius), borderSide: BorderSide(color: borderColor, width: borderWidth));
}

// ====================================
//     RichText heading widget
//--------------------------------------
Widget TextHeading({String? heading}) {
  return RichText(
    text: TextSpan(text: heading, style: mTextStyle25()),
  );
}

// ====================================
//     RichText subheading widget
//--------------------------------------
Widget heading({
  String? subHeading,
  double mFont = 24,
  Color mColor = Colors.black87,
}) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      text: subHeading,
      style: TextStyle(fontSize: mFont, color: mColor, fontWeight: FontWeight.w600, fontFamily: "Roboto"),
    ),
  );
}

Widget subheading({String? subHeading, double mFont = 12, Color mColor = Colors.black87, mTextAlign = TextAlign.center}) {
  return RichText(
    textAlign: mTextAlign,
    maxLines: 3,
    text: TextSpan(
      text: subHeading,
      style: TextStyle(fontSize: mFont, color: mColor, fontWeight: FontWeight.w600, fontFamily: "Roboto"),
    ),
  );
}

// ====================================
//     RichText paragraph widget
//--------------------------------------
Widget paragraphText({String? text, double mFont = 13, Color textColor = Colors.black87, double mHeight = 1.4}) {
  return RichText(
    textAlign: TextAlign.justify,
    text: TextSpan(
      text: text,
      style: TextStyle(fontSize: mFont, color: textColor, fontFamily: "Roboto", height: mHeight),
    ),
  );
}

// ====================================
//     DataRow in table
//--------------------------------------
DataRow CustomDataRow({
  String? textColumn_1,
  String? textColumn_2,
  String? textColumn_3,
}) {
  return DataRow(
    cells: [
      DataCell(
        Container(
          width: 150,
          child: paragraphText(text: "${textColumn_1}"),
        ),
      ),
      DataCell(Center(child: paragraphText(text: "${textColumn_2}"))),
      DataCell(
        Container(
          width: 150,
          child: paragraphText(text: "${textColumn_3}"),
        ),
      ),
    ],
  );
}
