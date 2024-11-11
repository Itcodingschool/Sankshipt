import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/material.dart';

class Button_Searching_Widget extends StatelessWidget {
  final void Function()? BNS_OnPressed;
  Color? BNS_BtnBg = Colors.transparent;
  Color? BNS_BorderColor = Colors.grey;
  Color? BNS_TextColor = AppColor.darkBlue;

  final void Function()? BNSS_OnPressed;
  Color? BNSS_BtnBg = Colors.transparent;
  Color? BNSS_BorderColor = Colors.grey;
  Color? BNSS_TextColor = AppColor.darkBlue;

  final void Function()? BSB_OnPressed;
  Color? BSB_BtnBg = Colors.transparent;
  Color? BSB_BorderColor = Colors.grey;
  Color? BSB_TextColor = AppColor.darkBlue;

  Button_Searching_Widget({
    required this.BNS_OnPressed,
    required this.BNSS_OnPressed,
    required this.BSB_OnPressed,
    this.BNS_BtnBg,
    this.BNS_BorderColor,
    this.BNS_TextColor,
    this.BNSS_BtnBg,
    this.BNSS_BorderColor,
    this.BNSS_TextColor,
    this.BSB_BtnBg,
    this.BSB_BorderColor,
    this.BSB_TextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: BNS_OnPressed,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6)),
              color: BNS_BtnBg,
              border: Border.all(
                color: BNS_BorderColor!,
              ),
            ),
            child: paragraphText(text: "BNS vs IPC", textColor: BNS_TextColor!, mFont: 11),
          ),
        ),

        // --------- BNSS Button -----------
        widthSpacer(mWidth: 5),
        InkWell(
          onTap: BNSS_OnPressed,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            decoration:
                BoxDecoration(color: BNSS_BtnBg, borderRadius: BorderRadius.circular(2), border: Border.all(color: BNSS_BorderColor!)),
            child: paragraphText(text: "BNSS vs CrPC", textColor: BNSS_TextColor!, mFont: 11),
          ),
        ),

        // ----------- BSB Button ------------------
        widthSpacer(mWidth: 5),
        InkWell(
          onTap: BSB_OnPressed,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            decoration: BoxDecoration(
                color: BSB_BtnBg,
                borderRadius: BorderRadius.only(topRight: Radius.circular(6), bottomRight: Radius.circular(6)),
                border: Border.all(color: BSB_BorderColor!)),
            child: paragraphText(text: "BSA vs IEA", textColor: BSB_TextColor!, mFont: 11),
          ),
        ),
      ],
    );
  }
}
