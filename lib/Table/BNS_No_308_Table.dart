import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BNS_No_308_Table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: DataTable(
          horizontalMargin: 20,
          columnSpacing: 20,
          dataRowMaxHeight: 110,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          border: TableBorder.all(color: AppColor.blue),
          columns: [
            DataColumn(label: subheading(subHeading: "BNS section", mColor: Colors.red)),
            DataColumn(label: paragraphText(text: "308(2)", textColor: Colors.red)),
            DataColumn(label: paragraphText(text: "308(3)", textColor: Colors.red)),
            DataColumn(label: paragraphText(text: "308(4)", textColor: Colors.red)),
            DataColumn(label: paragraphText(text: "308(5)", textColor: Colors.red)),
            DataColumn(label: paragraphText(text: "308(6)", textColor: Colors.red)),
            DataColumn(label: paragraphText(text: "308(7)", textColor: Colors.red)),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(subheading(subHeading: "BNS \n punishment", mColor: Colors.red)),
                DataCell(
                    paragraphText(text: "Term which may extend to seven \nyears, or with fine, or with both.", textColor: Colors.red)),
                DataCell(
                    paragraphText(text: "Term which may extend to two \nyears, or with fine, or with both.", textColor: Colors.red)),
                DataCell(paragraphText(
                    text: "Term which may extend to seven \nyears, and shall also be liable to fine.", textColor: Colors.red)),
                DataCell(paragraphText(
                    text: "Term which may extend to ten years, \nand shall also be liable to fine.", textColor: Colors.red)),
                DataCell(paragraphText(
                    text: "Term which may extend to ten years, \nand shall also be liable to fine.", textColor: Colors.red)),
                DataCell(paragraphText(
                    text: "Term which may extend to ten years, \nand shall also be liable to fine.", textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(subheading(subHeading: "IPC section", mColor: Colors.red)),
                DataCell(paragraphText(text: "384", textColor: Colors.red)),
                DataCell(paragraphText(text: "385", textColor: Colors.red)),
                DataCell(paragraphText(text: "387", textColor: Colors.red)),
                DataCell(paragraphText(text: "386", textColor: Colors.red)),
                DataCell(paragraphText(text: "389", textColor: Colors.red)),
                DataCell(paragraphText(text: "388", textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(subheading(subHeading: "IPC \npunishment", mColor: Colors.red)),
                DataCell(
                    paragraphText(text: "Term which may extend to three \nyears, or with fine, or with both.", textColor: Colors.red)),
                DataCell(
                    paragraphText(text: "Term which may extend to two \nyears, or with fine, or with both.", textColor: Colors.red)),
                DataCell(paragraphText(
                    text: "Term which may extend to seven \nyears, and shall also be liable to fine.", textColor: Colors.red)),
                DataCell(paragraphText(
                    text: "Term which may extend to ten \nyears, and shall also be liable to fine.", textColor: Colors.red)),
                DataCell(Container(
                  width: 300,
                  child: paragraphText(
                      text:"term which may extend to ten years, and shall also be liable to fine; and, if the offence be one punishable under section 377 of this Code, may be punished with imprisonment for life"
                      ,textColor: Colors.red),
                )),
                DataCell(paragraphText(
                    text:
                        "term which may extend to ten \nyears, and shall also be liable to fine; \nand, if the offence be one punishable under \nsection 377 of this Code, may be punished \nwith imprisonment for life",
                    textColor: Colors.red)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
