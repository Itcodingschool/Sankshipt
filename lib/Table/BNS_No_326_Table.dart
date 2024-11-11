import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BNS_No_326_Table extends StatelessWidget {
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
                DataCell(paragraphText(text: "326(a)", textColor: Colors.red)),
                DataCell(paragraphText(text: "430", textColor: Colors.red)),
                DataCell(paragraphText(text: "same", textColor: Colors.red)),
                DataCell(paragraphText(text: "Same", textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "326(b)", textColor: Colors.red)),
                DataCell(paragraphText(text: "431", textColor: Colors.red)),
                DataCell(paragraphText(text: "same", textColor: Colors.red)),
                DataCell(paragraphText(text: "same", textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "326(c)", textColor: Colors.red)),
                DataCell(paragraphText(text: "432", textColor: Colors.red)),
                DataCell(paragraphText(text: "same", textColor: Colors.red)),
                DataCell(paragraphText(text: "same", textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "326(d)", textColor: Colors.red)),
                DataCell(paragraphText(text: "433", textColor: Colors.red)),
                DataCell(
                  Container(
                    width: 300,
                    child: paragraphText(
                        text: "Destroying or moving any sign or signal used for "
                            "navigation of rail, aircraft or ship or other thing "
                            "placed as a guide for navigators, or by any act which "
                            "renders any such sign or signal less useful as a guide "
                            "for navigators, shall be punished with imprisonment of "
                            "either description for a term which may extend to seven "
                            "years, or with fine, or with both",
                        textColor: Colors.red),
                  ),
                ),
                DataCell(SingleChildScrollView(
                  child: Container(
                    width: 300,
                    child: paragraphText(
                        text: "Whoever commits mischief by destroying or moving any "
                            "light-house or other light used as a sea-mark, or any "
                            "sea-mark or buoy or other thing placed as a guide for "
                            "navigators, or by any act which renders any such light-house, "
                            "sea-mark, buoy or other such thing as aforesaid less useful "
                            "as a guide for navigators, shall be punished with  imprisonment "
                            "of either description for a term which may extend to seven years, "
                            "or with fine, or with both.",
                        textColor: Colors.red),
                  ),
                )),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "326(e)", textColor: Colors.red)),
                DataCell(paragraphText(text: "434", textColor: Colors.red)),
                DataCell(paragraphText(text: "same", textColor: Colors.red)),
                DataCell(paragraphText(text: "same", textColor: Colors.red)),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "326(f)", textColor: Colors.red)),
                DataCell(paragraphText(text: "435", textColor: Colors.red)),
                DataCell(
                  SingleChildScrollView(
                    child: Container(
                      width: 300,
                      child: paragraphText(
                          text: "(f) fire or any explosive substance intending to cause, "
                              "or knowing it to be likely that he will thereby cause, damage "
                              "to any property including agricultural produce, shall be punished "
                              "with imprisonment of either description for a term which may extend "
                              "to seven years, and shall also be liable to fine;",
                          textColor: Colors.red),
                    ),
                  ),
                ),
                DataCell(SingleChildScrollView(
                  child: Container(
                    width: 300,
                    child: paragraphText(
                        text: "Whoever commits mischief by fire or any explosive "
                            "substance intending to cause, or knowing it to be likely "
                            "that he will thereby cause, damage to any property to the "
                            "amount of one hundred rupees or upwards 1[or (where the "
                            "property is agricultural produce) ten rupees or upwards], "
                            "shall be punished with imprisonment of either description "
                            "for a term which may extend to seven years and shall also "
                            "be liable to fine.",
                        textColor: Colors.red),
                  ),
                )),
              ],
            ),
            DataRow(
              cells: [
                DataCell(paragraphText(text: "326(g)", textColor: Colors.red)),
                DataCell(paragraphText(text: "436", textColor: Colors.red)),
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
