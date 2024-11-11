import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/material.dart';

class Custom_ListTile extends StatelessWidget {
  final String top_left_heding;
  final String top_right_heding;
  final Widget? top_left_text;
  final Widget? top_right_text;
  final Widget title_text;

  Custom_ListTile({
    required this.top_left_heding,
    required this.top_right_heding,
    this.top_left_text,
    this.top_right_text,
    required this.title_text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // ------------- List Style --------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // -------- Left Section --------------
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                    ),
                    child: paragraphText(text: top_left_heding, textColor: AppColor.darkBlue),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    height: 50,
                    child: top_left_text,
                  ),
                ],
              ),
            ),

            // ------------- Title Text Display ---------------
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.center,
                child: title_text,
              ),
            ),

            // --------- Right Section ---------------
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                    ),
                    child: paragraphText(text: top_right_heding, textColor: AppColor.darkBlue),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    height: 50,
                    child: top_right_text,
                  ),
                ],
              ),
            ),
          ],
        ),

        // ---------- Card List Height -------------------
        Container(
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
