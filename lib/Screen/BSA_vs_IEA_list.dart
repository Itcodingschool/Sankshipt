import 'package:bns_vs_ipc/App_Widget/Custom_ListTile.dart';
import 'package:bns_vs_ipc/App_Widget/Highlight_Text.dart';
import 'package:bns_vs_ipc/Cubit/BSA_Cubit/Bsb_Cubit.dart';
import 'package:bns_vs_ipc/Cubit/BSA_Cubit/Bsb_State.dart';
import 'package:bns_vs_ipc/Screen/BSA_vs_IEA_Details.dart';
import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BSB_vs_IEA extends StatelessWidget {
  final TextEditingController searchController;

  BSB_vs_IEA({required this.searchController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BsbCubit, BSB_State>(
      builder: (context, state) {
        return BlocProvider.of<BsbCubit>(context).filteredBsbData.isEmpty
            ? Container()
            // Center(child: Image.asset("assets/image/bg_ic_2.png", width: 200))
            : searchController.text.isEmpty
                ? Container()
                // Center(child: Image.asset("assets/image/bg_ic_2.png", width: 250))
                : ListView.builder(
                    itemCount: BlocProvider.of<BsbCubit>(context).filteredBsbData.length,
                    itemBuilder: (context, index) {
                      // create var because not write repeat and repeat
                      var DataIndex = BlocProvider.of<BsbCubit>(context).filteredBsbData[index].data() as Map<String, dynamic>;

                      // ---------- Searched and Highlight Searching keywords -----------------
                      String title = DataIndex['Title'].toString().toLowerCase();
                      String clause = DataIndex['Clause'].toString().toLowerCase();
                      String IEA = DataIndex['IEA'].toString().toLowerCase();
                      String desc = DataIndex['Description'].toString();
                      String notes = DataIndex['Notes'].toString();
                      String searchedLower = searchController.text.toLowerCase();
                      int indexOfQueryTitle = title.indexOf(searchedLower);
                      int indexOfQueryClause = clause.indexOf(searchedLower);
                      int indexOfQueryIEA = IEA.indexOf(searchedLower);
                      int indexOfQueryDesc = desc.indexOf(searchedLower);
                      int indexOfQueryNotes = notes.indexOf(searchedLower);

                      // Check if indexOfQuery is valid before using it
                      if (indexOfQueryTitle != -1 ||
                          indexOfQueryClause != -1 ||
                          indexOfQueryIEA != -1 ||
                          indexOfQueryDesc != -1 ||
                          indexOfQueryNotes != -1) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BSA_vs_IEA_Details(
                                    BSA_index: DataIndex,
                                  ),
                                ),
                              );
                            },
                            child: Custom_ListTile(
                              top_left_heding: "BSA",
                              top_right_heding: "IEA",

                              // ---- BNS Sec --------
                              top_left_text: indexOfQueryClause != -1
                                  ? HighLightText(
                                      isClause: "Clause ",
                                      mFontSize: 12,
                                      perv_Text: clause.substring(0, indexOfQueryClause),
                                      highlight_Text: clause.substring(indexOfQueryClause, indexOfQueryClause + searchedLower.length),
                                      next_Text: clause.substring(indexOfQueryClause + searchedLower.length),
                                    )
                                  : subheading(subHeading: "Clause ${clause}", mFont: 12),

                              // ------- IPC Sec --------
                              top_right_text: indexOfQueryIEA != -1
                                  ? HighLightText(
                                      mFontSize: 12,
                                      perv_Text: IEA.substring(0, indexOfQueryIEA),
                                      highlight_Text: IEA.substring(indexOfQueryIEA, indexOfQueryIEA + searchedLower.length),
                                      next_Text: IEA.substring(indexOfQueryIEA + searchedLower.length),
                                    )
                                  : subheading(subHeading: "${IEA}", mFont: 12),

                              // ------- Title --------
                              title_text: indexOfQueryTitle != -1
                                  ? HighLightText(
                                      mFontSize: 11,
                                      perv_Text: title.substring(0, indexOfQueryTitle),
                                      highlight_Text: title.substring(indexOfQueryTitle, indexOfQueryTitle + searchedLower.length),
                                      next_Text: title.substring(indexOfQueryTitle + searchedLower.length),
                                    )
                                  : subheading(subHeading: "${title}", mFont: 11),
                            ),
                          ),
                        );
                      } else {
                        // Handle case when query is not found in the title
                        return Container(); // or some other appropriate widget
                      }
                    });
      },
    );
  }
}
