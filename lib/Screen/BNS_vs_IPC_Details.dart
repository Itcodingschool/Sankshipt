import 'package:bns_vs_ipc/App_Widget/Custom_ListTile.dart';
import 'package:bns_vs_ipc/Table/BNS_No_308_Table.dart';
import 'package:bns_vs_ipc/Table/BNS_No_318_Table.dart';
import 'package:bns_vs_ipc/Table/BNS_No_324_Table.dart';
import 'package:bns_vs_ipc/Table/BNS_No_325_Table.dart';
import 'package:bns_vs_ipc/Table/BNS_No_326_Table.dart';
import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BNS_vs_IPC_Details extends StatelessWidget {
  final BNS_index;
  BNS_vs_IPC_Details({required this.BNS_index});

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
          actions: [
            MediaQuery.of(context).size.width >= 700
                ? IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: const Text("Alert Dialog Box"),
                          content: const Text("You have raised a Alert Dialog Box"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Container(
                                color: Colors.green,
                                padding: const EdgeInsets.all(14),
                                child: const Text("okay"),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: Icon(Icons.edit, color: AppColor.white))
                : Container(),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // ---------------- Top box ------------------
                Custom_ListTile(
                  top_left_heding: "BNS Sec.",
                  top_right_heding: "IPC Sec.",
                  top_left_text: BNS_index['BNS_No'] == null
                      ? subheading(subHeading: "")
                      : subheading(
                          subHeading: "${BNS_index['BNS_No']}",
                        ),
                  top_right_text: BNS_index['IPC_No'] == null
                      ? subheading(subHeading: "")
                      : subheading(
                          subHeading: "${BNS_index['IPC_No']}",
                        ),
                  title_text: subheading(
                    subHeading: "${BNS_index['Title']}",
                    mFont: 11,
                    mColor: BNS_index['Title'] == "This IPC_No is deleted" ? Colors.red : AppColor.black,
                  ),
                ),

                // ------------- BNS_vs_IPC Details --------------------
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
                          subHeading: "Provisions of the bare act of the BNS and the comparative Changes and their implications",
                          mTextAlign: TextAlign.start,
                        ),
                      ),

                      // --------- Description ---------------
                      BNS_index['Description'] == " " || BNS_index['Description'] == null
                          ? Container()
                          : Padding(
                              padding: const EdgeInsets.all(10),
                              child: paragraphText(text: '''${BNS_index['Description']}'''),
                            ),

                      // --------- Current Update ---------------
                      BNS_index['Current_Update'] == " " || BNS_index['Current_Update'] == null
                          ? Container()
                          : Padding(
                              padding: const EdgeInsets.all(10),
                              child: paragraphText(text: '''${BNS_index['Current_Update']}''', textColor: Colors.red),
                            ),

                      // ------------ Table Show Then BNS No is Equal to 308 ----------------------------
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: BNS_index['BNS_No'] == "308" ? BNS_No_308_Table() : Container(),
                      ),

                      // ------------ Table Show Then BNS No is Equal to 318 ----------------------------
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: BNS_index['BNS_No'] == "318" ? BNS_No_318_Table() : Container(),
                      ),

                      // ------------ Table Show Then BNS No is Equal to 324  ----------------------------
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: BNS_index['BNS_No'] == "324" ? BNS_No_324_Table() : Container(),
                      ),

                      // ------------ Table Show Then BNS No is Equal to 325  ----------------------------
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: BNS_index['BNS_No'] == "325" ? BNS_No_325_Table() : Container(),
                      ),

                      // ------------ Table Show Then BNS No is Equal to 326  ----------------------------
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: BNS_index['BNS_No'] == "326" ? BNS_No_326_Table() : Container(),
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
