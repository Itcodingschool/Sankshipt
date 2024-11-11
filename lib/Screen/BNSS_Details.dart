import 'package:bns_vs_ipc/App_Widget/Custom_ListTile.dart';
import 'package:bns_vs_ipc/Table/CrPC_No_S_320.dart';
import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BNSS_Details extends StatelessWidget {
  final BNSS_index;
  BNSS_Details({required this.BNSS_index});

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
                  top_left_heding: "BNSS",
                  top_right_heding: "CrPC",
                  top_left_text: BNSS_index['Clause'] == null
                      ? subheading(subHeading: "")
                      : subheading(subHeading: "Clause ${BNSS_index['Clause']}"),

                  top_right_text: BNSS_index['CrPC'] == null
                      ? subheading(subHeading: "")
                      : subheading(
                          subHeading: "${BNSS_index['CrPC']}",
                        ),

                  title_text: subheading(
                    subHeading: "${BNSS_index['Title']}",
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
                          subHeading: "THE BHARATIYA NAGARIK SURAKSHA SANHITA, 2023",
                          mTextAlign: TextAlign.start,
                        ),
                      ),

                      // ---------- If CrPC No Equal to S.320 then show this table otherwise not display -------------------------
                      BNSS_index['CrPC'] == "S.320*" ? CrPC_No_S320() : Container(),

                      // --------- Description ---------------
                      BNSS_index['Description'] == " " || BNSS_index['Description'] == null
                          ? Container()
                          : Padding(
                              padding: const EdgeInsets.all(10),
                              child: paragraphText(text: '''${BNSS_index['Description']}'''),
                            ),

                      // --------- Current Update ---------------
                      BNSS_index['Notes'] == null || BNSS_index['Notes'] == " "
                          ? Container()
                          : Container(
                              width: double.infinity,
                              decoration: BoxDecoration(border: Border.all(color: Colors.red), color: Colors.red.shade50),
                              padding: const EdgeInsets.all(10),
                              child: paragraphText(text: '''${BNSS_index['Notes']}''', textColor: Colors.red),
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
