import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CrPC_No_S320 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            ///------------ Table No 1 -------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: paragraphText(
                text:
                    "359. (1) The offences punishable under the sections of the Bharatiya Nyaya Sanhita, 2023 specified in the first two columns of the Table next following may be compounded by the persons mentioned in the third column of that Table:—",
              ),
            ),
            heightSpacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                horizontalMargin: 10,
                columnSpacing: 20,
                dataRowMaxHeight: 90,
                decoration: BoxDecoration(color: Colors.white),
                border: TableBorder.all(color: AppColor.blue),
                columns: [
                  DataColumn(label: Container(width: 150, child: subheading(subHeading: "Offence"))),
                  DataColumn(
                      label: Container(
                          width: 150, child: subheading(subHeading: " Section of the Bharatiya Nyaya Sanhita, 2023 applicable"))),
                  DataColumn(label: Container(width: 150, child: subheading(subHeading: "Person by whom offence may be compounded"))),
                ],
                rows: [
                  // ------- Row 1 --------------
                  CustomDataRow(
                    textColumn_1: "Uttering words, etc., with deliberate intent to wound the religious feelings of any person.",
                    textColumn_2: "300",
                    textColumn_3: "The person whose religious feelings are intended to be wounded.",
                  ),

                  // ----------- Row 2 ------------
                  CustomDataRow(
                    textColumn_1: "Voluntarily causing hurt.",
                    textColumn_2: "113(2)",
                    textColumn_3: "The person to whom the hurt is caused.",
                  ),

                  // --------------- Row 3 -----------------
                  CustomDataRow(
                    textColumn_1: "Voluntarily causing hurt on provocation.",
                    textColumn_2: "120(1)",
                    textColumn_3: "Ditto",
                  ),

                  // -------------- Row 4 -------------------
                  CustomDataRow(
                    textColumn_1: "Voluntarily causing grievous hurt on grave and sudden provocation.",
                    textColumn_2: "120(2)",
                    textColumn_3: "The person to whom the hurt is caused.",
                  ),

                  // ------------------ Row 5 -------------------
                  CustomDataRow(
                    textColumn_1: "Wrongfully restraining or confining any person",
                    textColumn_2: "124(2)",
                    textColumn_3: "The person restrained or confined",
                  ),

                  // ------------------ Row 6 -------------------
                  CustomDataRow(
                    textColumn_1: "Wrongfully confining a person for three days or more.",
                    textColumn_2: "125(3)",
                    textColumn_3: "The person confined.",
                  ),

                  // ------------------ Row 7 -------------------
                  CustomDataRow(
                    textColumn_1: "Wrongfully confining a person for ten days or more.",
                    textColumn_2: "125(4)",
                    textColumn_3: "Ditto",
                  ),

                  // ------------------ Row 8 -------------------
                  CustomDataRow(
                    textColumn_1: "Wrongfully confining a person in secret.",
                    textColumn_2: "125(6)",
                    textColumn_3: "The person confined.",
                  ),

                  // ------------------ Row 9 -------------------
                  CustomDataRow(
                    textColumn_1: "Assault or use of criminal force.",
                    textColumn_2: "129, 131 ",
                    textColumn_3: "The person assaulted or to whom criminal force is used.",
                  ),

                  // ------------------ Row 10 -------------------
                  CustomDataRow(
                    textColumn_1: "House-trespassing or house-breaking after sunset or before sunrise",
                    textColumn_2: "329(6)",
                    textColumn_3: "Person in possession of property trespassed upon.",
                  ),

                  // ------------------ Row 11 -------------------
                  CustomDataRow(
                    textColumn_1: "Theft",
                    textColumn_2: "301(2)",
                    textColumn_3: " The owner of the property stolen.",
                  ),

                  // ------------------ Row 12 -------------------
                  CustomDataRow(
                    textColumn_1: "Dishonest misappropriation of property.",
                    textColumn_2: "312",
                    textColumn_3: "The owner of the property misappropriated",
                  ),

                  // ------------------ Row 13 -------------------
                  CustomDataRow(
                    textColumn_1: "Criminal breach of trust by a carrier, wharfinger, etc.",
                    textColumn_2: "314(3)",
                    textColumn_3: "The owner of the property in  respect of which the breach of trust has been committed.",
                  ),

                  // ------------------ Row 14 -------------------
                  CustomDataRow(
                    textColumn_1: "Dishonestly receiving stolen property knowing it to be stolen.",
                    textColumn_2: "315(2)",
                    textColumn_3: "Ditto",
                  ),

                  // ------------------ Row 15 -------------------
                  CustomDataRow(
                    textColumn_1: "Cheating",
                    textColumn_2: "316(2)",
                    textColumn_3: "The person cheated.",
                  ),

                  // ------------------ Row 16 -------------------
                  CustomDataRow(
                    textColumn_1: "Cheating by personation.",
                    textColumn_2: "317(2)",
                    textColumn_3: "Ditto",
                  ),

                  // ------------------ Row 17 -------------------
                  CustomDataRow(
                    textColumn_1: "Fraudulent removal or concealment of property, etc., to prevent distribution among creditors.",
                    textColumn_2: "318",
                    textColumn_3: "The creditors who are affected thereby",
                  ),

                  // ------------------ Row 18 -------------------
                  CustomDataRow(
                    textColumn_1:
                        "Fraudulently preventing from being made available for his creditors a debt or demand due to the offender",
                    textColumn_2: "319",
                    textColumn_3: "Ditto",
                  ),

                  // ------------------ Row 19 -------------------
                  CustomDataRow(
                    textColumn_1: "Fraudulent execution of deed of transfer containing false statement of consideration",
                    textColumn_2: "320",
                    textColumn_3: "The person affected thereby.",
                  ),

                  // ------------------ Row 20 -------------------
                  CustomDataRow(
                    textColumn_1: "Fraudulent removal or concealment of property.",
                    textColumn_2: "321",
                    textColumn_3: "Ditto",
                  ),

                  // ------------------ Row 21 -------------------
                  CustomDataRow(
                    textColumn_1: "Mischief, when the only loss or damage caused is loss or damage to a private person.",
                    textColumn_2: "322(2), 322(4)",
                    textColumn_3: "The person to whom the loss or damage is caused.",
                  ),

                  // ------------------ Row 22 -------------------
                  CustomDataRow(
                    textColumn_1: "Mischief by killing or maiming animal.",
                    textColumn_2: "323",
                    textColumn_3: "The owner of the animal.",
                  ),

                  // ------------------ Row 23 -------------------
                  CustomDataRow(
                    textColumn_1:
                        "Mischief by injury to works of irrigation by wrongfully diverting water when the only loss or damage caused is loss or damage to private person.",
                    textColumn_2: "324(a)",
                    textColumn_3: "The person to whom the loss  or damage is caused.",
                  ),

                  // ------------------ Row 24 -------------------
                  CustomDataRow(
                    textColumn_1: "Criminal trespass.",
                    textColumn_2: "327(3)",
                    textColumn_3: "The person in possession of the property trespassed upon.",
                  ),

                  // ------------------ Row 25 -------------------
                  CustomDataRow(
                    textColumn_1: "House-trespass.",
                    textColumn_2: "327(4)",
                    textColumn_3: "Ditto",
                  ),

                  // ------------------ Row 26 -------------------
                  CustomDataRow(
                    textColumn_1: "House-trespass to commit an offence (other than theft) punishable with imprisonment.",
                    textColumn_2: "330(c)",
                    textColumn_3: "The person in possession of the house trespassed upon.",
                  ),

                  // ------------------ Row 27 -------------------
                  CustomDataRow(
                    textColumn_1: "Using a false trade or property mark.",
                    textColumn_2: "343(3)",
                    textColumn_3: "The person to whom loss or injury is caused by such use.",
                  ),

                  // ------------------ Row 28 -------------------
                  CustomDataRow(
                    textColumn_1: "Counterfeiting a property mark used by another.",
                    textColumn_2: "345(1)",
                    textColumn_3: "Ditto",
                  ),

                  // ------------------ Row 29 -------------------
                  CustomDataRow(
                    textColumn_1: "Selling goods marked with a counterfeit property mark.",
                    textColumn_2: "347",
                    textColumn_3: "Ditto",
                  ),
                  // ------------------ Row 30 -------------------
                  CustomDataRow(
                    textColumn_1: "Breach of contract to attend on and supply wants of helpless person.",
                    textColumn_2: "355",
                    textColumn_3: "The person with whom the offender has contracted.",
                  ),

                  // ------------------ Row 31 -------------------
                  CustomDataRow(
                    textColumn_1: "Enticing or taking away or detaining with criminal intent a married woman",
                    textColumn_2: "83",
                    textColumn_3: "The husband of the woman and the woman.",
                  ),

                  // ------------------ Row 32 -------------------
                  CustomDataRow(
                    textColumn_1: "Defamation",
                    textColumn_2: "354(2)",
                    textColumn_3: "The person defamed.",
                  ),

                  // ------------------ Row 32 -------------------
                  CustomDataRow(
                    textColumn_1: "Printing or engraving matter, knowing it to be defamatory.",
                    textColumn_2: "354(3)",
                    textColumn_3: "Ditto",
                  ),

                  // ------------------ Row 33 -------------------
                  CustomDataRow(
                    textColumn_1:
                        "Sale of printed or engraved substance containing defamatory matter, knowing it to contain such matter.",
                    textColumn_2: "354(4)",
                    textColumn_3: "Ditto",
                  ),

                  // ------------------ Row 34 -------------------
                  CustomDataRow(
                    textColumn_1: "Insult intended to provoke a breach of the peace.",
                    textColumn_2: "350",
                    textColumn_3: "The person insulted",
                  ),

                  // ------------------ Row 35 -------------------
                  CustomDataRow(
                    textColumn_1: "Criminal intimidation.",
                    textColumn_2: "349(2)",
                    textColumn_3: "The person intimidated.",
                  ),

                  // ------------------ Row 36 -------------------
                  CustomDataRow(
                    textColumn_1: "Inducing person to believe himself an object of divine displeasure.",
                    textColumn_2: "352",
                    textColumn_3: "The person induced",
                  ),
                ],
              ),
            ),

            ///------------ Table No 2 -------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: paragraphText(
                text:
                    "\n(2) The offences punishable under the sections of the Bharatiya Nyaya Sanhita specified in the first two columns of the Table next following may, with the permission of the Court before which any prosecution for such offence is pending, be compounded by the persons mentioned in the third column of that Table:—",
              ),
            ),
            heightSpacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                horizontalMargin: 10,
                columnSpacing: 20,
                dataRowMaxHeight: 90,
                decoration: BoxDecoration(color: Colors.white),
                border: TableBorder.all(color: AppColor.blue),
                columns: [
                  DataColumn(label: Container(width: 150, child: subheading(subHeading: "Offence"))),
                  DataColumn(
                      label:
                          Container(width: 150, child: subheading(subHeading: " Section of the Bharatiya Nyaya Sanhita applicable"))),
                  DataColumn(label: Container(width: 150, child: subheading(subHeading: "Person by whom offence may be compounded"))),
                ],
                rows: [
                  // ------- Row 1 --------------
                  CustomDataRow(
                    textColumn_1: "Causing miscarriage",
                    textColumn_2: "86 ",
                    textColumn_3: "The woman to whom miscarriage is caused",
                  ),

                  // ----------- Row 2 ------------
                  CustomDataRow(
                    textColumn_1: "Voluntarily causing grievous hurt.",
                    textColumn_2: "115(2)",
                    textColumn_3: "The person to whom hurt is caused",
                  ),

                  // --------------- Row 3 -----------------
                  CustomDataRow(
                    textColumn_1:
                        "Causing hurt by doing an act so rashly and negligently as to endanger human life or the personal safety of others",
                    textColumn_2: "123(a)",
                    textColumn_3: "Ditto",
                  ),

                  // -------------- Row 4 -------------------
                  CustomDataRow(
                    textColumn_1: "Causing grievous hurt by doing an act so rashly and negligently as to endanger safety of others.",
                    textColumn_2: "123(b)",
                    textColumn_3: "Ditto",
                  ),

                  // ------------------ Row 5 -------------------
                  CustomDataRow(
                    textColumn_1: "Assault or criminal force in attempting wrongfully to confine a person",
                    textColumn_2: "133",
                    textColumn_3: "The person assaulted or to whom the force was used.",
                  ),

                  // ------------------ Row 6 -------------------
                  CustomDataRow(
                    textColumn_1: "Theft, by clerk or servant of property in possession of master.",
                    textColumn_2: "304",
                    textColumn_3: "The owner of the property stolen",
                  ),

                  // ------------------ Row 7 -------------------
                  CustomDataRow(
                    textColumn_1: "Criminal breach of trust.",
                    textColumn_2: "314(2)",
                    textColumn_3: "The owner of the property in respect of which breach of trust has been committed.",
                  ),

                  // ------------------ Row 8 -------------------
                  CustomDataRow(
                    textColumn_1: "Criminal breach of trust by a clerk or servant.",
                    textColumn_2: "314(4)",
                    textColumn_3: "The owner of the property in respect of which the breach of trust has been committed.",
                  ),

                  // ------------------ Row 9 -------------------
                  CustomDataRow(
                    textColumn_1:
                        "Cheating a person whose interest the offender was bound, either by law or by legal contract, to protect",
                    textColumn_2: "316(3)",
                    textColumn_3: "The person cheated.",
                  ),

                  // ------------------ Row 10 -------------------
                  CustomDataRow(
                    textColumn_1:
                        "Cheating and dishonestly inducing delivery of property or the making, alteration or destruction of a valuable security",
                    textColumn_2: "316(4)",
                    textColumn_3: "The person cheated.",
                  ),

                  // ------------------ Row 11 -------------------
                  CustomDataRow(
                    textColumn_1: "Marrying again during the life-time of a husband or wife.",
                    textColumn_2: "81(2)",
                    textColumn_3: "The husband or wife of the  person so marrying.",
                  ),

                  // ------------------ Row 12 -------------------
                  CustomDataRow(
                    textColumn_1: "Defamation",
                    textColumn_2: "354(2)",
                    textColumn_3: "The person defamed.",
                  ),

                  // ------------------ Row 13 -------------------
                  CustomDataRow(
                    textColumn_1: "Word, gesture or act intended to insult the modesty of a woman.",
                    textColumn_2: "78",
                    textColumn_3: "The woman whom it was intended to insult or whose privacy was intruded upon.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
