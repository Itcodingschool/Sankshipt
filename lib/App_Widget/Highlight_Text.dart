import 'package:flutter/material.dart';

class HighLightText extends StatelessWidget {
  final String perv_Text;
  final String highlight_Text;
  final String next_Text;
  double? mFontSize = 11;
  String? isClause;

  HighLightText({required this.perv_Text, required this.highlight_Text, required this.next_Text, this.mFontSize, this.isClause});

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 3,
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(fontSize: mFontSize, fontWeight: FontWeight.w500),
        children: [
          TextSpan(text: isClause, style: TextStyle(color: Colors.black)),
          TextSpan(
            text: perv_Text,
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: highlight_Text,
            style: TextStyle(backgroundColor: Colors.yellow, color: Colors.red, fontSize: mFontSize, fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: next_Text,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
