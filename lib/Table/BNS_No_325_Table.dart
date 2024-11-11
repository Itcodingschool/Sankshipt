import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BNS_No_325_Table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: DataTable(
          horizontalMargin: 20,
          columnSpacing: 20,
          dataRowMaxHeight: 310,
          decoration: BoxDecoration(color: Colors.white),
          border: TableBorder.all(color: AppColor.blue),
          columns: [
            DataColumn(label: subheading(subHeading: "BNS section", mColor: Colors.red)),
            DataColumn(label: subheading(subHeading: "IPC section", mColor: Colors.red)),
            DataColumn(label: subheading(subHeading: "BNS provision", mColor: Colors.red)),
            DataColumn(label: subheading(subHeading: "IPC provision", mColor: Colors.red)),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(paragraphText(text: "325", textColor: Colors.red)),
                DataCell(paragraphText(text: "428 + 429", textColor: Colors.red)),
                DataCell(Container(
                  width: 300,
                  child: paragraphText(
                      text:
                          "Whoever commits mischief by killing, poisoning, maiming or rendering useless any animal shall be punished with imprisonment of either description for a term which may extend to five years, or with fine, or with both.",
                      textColor: Colors.red),
                )),
                DataCell(Container(
                  width: 300,
                  child: paragraphText(
                      text: "Section 428: Whoever commits mischief by killing, poisoning, maiming or "
                          "rendering useless any animal or animals of the value of the ten rupees or "
                          "upwards, shall be punished with imprisonment of either description for a term "
                          "which may extend to two years, or with fine, or with both\n\n"
                          "Section 429: Whoever commits mischief by killing, poisoning, maiming or rendering "
                          "useless, any elephant, camel, horse, mule, buffalo, bull, cow or ox, whatever may be "
                          "the value thereof, or any other animal of the value of fifty rupees or upwards, shall "
                          "be punished with imprisonment of either description for a term which may extend to five "
                          "years, or with fine, or with both.",
                      textColor: Colors.red),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
