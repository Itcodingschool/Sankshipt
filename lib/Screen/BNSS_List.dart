import 'package:bns_vs_ipc/App_Widget/Custom_ListTile.dart';
import 'package:bns_vs_ipc/App_Widget/Highlight_Text.dart';
import 'package:bns_vs_ipc/Cubit/BNSS_Cubit/BNSS_State.dart';
import 'package:bns_vs_ipc/Cubit/BNSS_Cubit/BNSS_cubit.dart';
import 'package:bns_vs_ipc/Screen/BNSS_Details.dart';
import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BNSS_List extends StatelessWidget {
  final TextEditingController searchController;

  BNSS_List({required this.searchController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BnssCubit, BNSS_State>(
      builder: (context, state) {
        return BlocProvider.of<BnssCubit>(context).filteredBnssData.isEmpty
            ? Container()
                // Center(child: Image.asset("assets/image/bg_ic_2.png", width: 200))
            : searchController.text.isEmpty
                ? Container()
                  // Center(child: Image.asset("assets/image/bg_ic_2.png", width: 250))
                : ListView.builder(
                    itemCount: BlocProvider.of<BnssCubit>(context).filteredBnssData.length,
                    itemBuilder: (context, index) {
                      // create var because not write repeat and repeat
                      var DataIndex = BlocProvider.of<BnssCubit>(context).filteredBnssData[index].data() as Map<String, dynamic>;

                      // ---------- Searched and Highlight Searching keywords -----------------
                      String title = DataIndex['Title'].toString().toLowerCase();
                      String clause = DataIndex['Clause'].toString().toLowerCase();
                      String CrPC = DataIndex['CrPC'].toString().toLowerCase();
                      String desc = DataIndex['Description'].toString();
                      String notes = DataIndex['Notes'].toString();
                      String searchedLower = searchController.text.toLowerCase();
                      int indexOfQueryTitle = title.indexOf(searchedLower);
                      int indexOfQueryClause = clause.indexOf(searchedLower);
                      int indexOfQueryCrPC = CrPC.indexOf(searchedLower);
                      int indexOfQueryDesc = desc.indexOf(searchedLower);
                      int indexOfQueryNotes = notes.indexOf(searchedLower);

                      // Check if indexOfQuery is valid before using it
                      if (indexOfQueryTitle != -1 ||
                          indexOfQueryClause != -1 ||
                          indexOfQueryCrPC != -1 ||
                          indexOfQueryDesc != -1 ||
                          indexOfQueryNotes != -1) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BNSS_Details(
                                    BNSS_index: DataIndex,
                                  ),
                                ),
                              );
                            },
                            child: Custom_ListTile(
                              top_left_heding: "BNSS",
                              top_right_heding: "CrPC",

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
                              top_right_text: indexOfQueryCrPC != -1
                                  ? HighLightText(
                                      mFontSize: 12,
                                      perv_Text: CrPC.substring(0, indexOfQueryCrPC),
                                      highlight_Text: CrPC.substring(indexOfQueryCrPC, indexOfQueryCrPC + searchedLower.length),
                                      next_Text: CrPC.substring(indexOfQueryCrPC + searchedLower.length),
                                    )
                                  : subheading(subHeading: "${CrPC}", mFont: 12),

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
