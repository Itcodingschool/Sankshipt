import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BNS_No_324_Table extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: DataTable(
          horizontalMargin: 20,
          columnSpacing: 20,
          dataRowMaxHeight: 120,
          decoration: BoxDecoration(color: AppColor.white),
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
                DataCell(paragraphText(text: "324(1)", textColor: Colors.red)),
                DataCell(paragraphText(text: "425", textColor: Colors.red)),
                DataCell(paragraphText(text: "Same", textColor: Colors.red)),
                DataCell(paragraphText(text: "Same", textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "324(2)", textColor: Colors.red)),
                DataCell(paragraphText(text: "426", textColor: Colors.red)),
                DataCell(paragraphText(text: "Term which may extend to six months.", textColor: Colors.red)),
                DataCell(paragraphText(text: "Term which may extend to three months", textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "324(3)", textColor: Colors.red)),
                DataCell(paragraphText(text: "_", textColor: Colors.red)),
                DataCell(Container(
                  width: 300,
                  child: paragraphText(
                      text:
                          "Whoever commits mischief and thereby causes loss or damage to any property including the property of Government or Local Authority shall be punished with imprisonment of either description for a term which may extend to one year, or with fine, or with both.",
                      textColor: Colors.red),
                )),
                DataCell(paragraphText(text: "There is no corresponding provision in the IPC.", textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "324(4) + 324(5)", textColor: Colors.red)),
                DataCell(paragraphText(text: "427", textColor: Colors.red)),
                DataCell(paragraphText(text: "Pls refer bare provision above", textColor: Colors.red)),
                DataCell(SingleChildScrollView(
                  child: Container(
                    width: 300,
                    child: paragraphText(
                        text:
                            "Whoever commits mischief and thereby causes loss or damage to the amount of fifty rupees or upwards, shall be punished with imprisonment of either description for a term which may extend to two years, or with fine, or with both.",
                        textColor: Colors.red),
                  ),
                )),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "324(6)", textColor: Colors.red)),
                DataCell(paragraphText(text: "440", textColor: Colors.red)),
                DataCell(paragraphText(text: "same", textColor: Colors.red)),
                DataCell(paragraphText(text: "same", textColor: Colors.red)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
