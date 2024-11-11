import 'package:bns_vs_ipc/App_Widget/Custom_ListTile.dart';
import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/material.dart';

class BSA_vs_IEA_Details extends StatelessWidget {
  final BSA_index;
  BSA_vs_IEA_Details({required this.BSA_index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage("assets/image/bg_ic_2.png"), opacity: 0.06),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: AppColor.darkBlue,
          foregroundColor: Colors.white,
          titleSpacing: 0,
          title: Text("Details", style: mTextStyle18(mColor: Colors.white)),
        ),
        body: Container(
          padding: EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // ---------------- Top box ------------------
                Custom_ListTile(
                  // mFont: 12,
                  top_left_heding: "BSB",
                  top_right_heding: "IEA",

                  top_left_text: BSA_index['Clause'] == null
                      ? subheading(subHeading: "")
                      : subheading(subHeading: "Clause ${BSA_index['Clause']}"),

                  top_right_text: BSA_index['IEA'] == null
                      ? subheading(subHeading: "")
                      : subheading(
                          subHeading: "${BSA_index['IEA']}",
                        ),

                  title_text: subheading(
                    subHeading: "${BSA_index['Title']}",
                    mFont: 11,
                    mColor: AppColor.black,
                  ),
                ),

                // ------------- BNSS Details --------------------
                heightSpacer(),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        color: Colors.blue.shade50,
                        child: subheading(
                          subHeading: "THE BHARATIYA SAKSHYA BILL, 2023",
                          mTextAlign: TextAlign.start,
                        ),
                      ),

                      // --------- Description ---------------
                      BSA_index['Description'] == " "
                          ? Container()
                          : Padding(
                              padding: const EdgeInsets.all(10),
                              child: paragraphText(text: '''${BSA_index['Description']}'''),
                            ),

                      // --------- Current Update ---------------
                      BSA_index['Notes'] == " "
                          ? Container()
                          : Container(
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.red), color: Colors.red.shade50),
                              padding: const EdgeInsets.all(10),
                              child: paragraphText(text: '''${BSA_index['Notes']}''', textColor: Colors.red),
                            ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
