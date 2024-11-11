import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/material.dart';

class BNS_No_318_Table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: DataTable(
          horizontalMargin: 20,
          columnSpacing: 20,
          dataRowMaxHeight: 60,
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
                DataCell(paragraphText(text: "318(1)",textColor: Colors.red)),
                DataCell(paragraphText(text: "415",textColor: Colors.red)),
                DataCell(paragraphText(text: "Same",textColor: Colors.red)),
                DataCell(paragraphText(text: "Same",textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "318(2)",textColor: Colors.red)),
                DataCell(paragraphText(text: "417",textColor: Colors.red)),
                DataCell(paragraphText(text: "Term which may extend to three \nyears, or with fine, or with both.",textColor: Colors.red)),
                DataCell(paragraphText(text: "Term which may extend to one \nyear, or with fine, or with both",textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "318(3)",textColor: Colors.red)),
                DataCell(paragraphText(text: "418",textColor: Colors.red)),
                DataCell(paragraphText(text: "Term which may extend to five \nyears, or with fine, or with both.",textColor: Colors.red)),
                DataCell(paragraphText(text: "Term which may extend to three \nyears, or with fine, or with both.",textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "318(4)",textColor: Colors.red)),
                DataCell(paragraphText(text: "420",textColor: Colors.red)),
                DataCell(paragraphText(text: "Term which may extend to seven \nyears, and shall also be liable to fine",textColor: Colors.red)),
                DataCell(paragraphText(text: "Term which may extend to seven \nyears, and shall also be liable to fine.",textColor: Colors.red)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
