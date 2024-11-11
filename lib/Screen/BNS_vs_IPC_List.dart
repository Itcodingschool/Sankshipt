import 'package:bns_vs_ipc/App_Widget/Custom_ListTile.dart';
import 'package:bns_vs_ipc/App_Widget/Highlight_Text.dart';
import 'package:bns_vs_ipc/Cubit/Bns_Cubit/bns_cubit.dart';
import 'package:bns_vs_ipc/Cubit/Bns_Cubit/bns_state.dart';
import 'package:bns_vs_ipc/Screen/BNS_vs_IPC_Details.dart';
import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BNS_vs_IPC_List extends StatelessWidget {
  final TextEditingController searchController;

  BNS_vs_IPC_List({required this.searchController});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BnsCubit, BNS_State>(
      builder: (context, state) {
        return BlocProvider.of<BnsCubit>(context).filteredData.isEmpty
            ? Container()
                // Center(child: Image.asset("assets/image/bg_ic_2.png", width: 200))
            : searchController.text.isEmpty
                ? Container()
                  // Center(child: Image.asset("assets/image/bg_ic_2.png", width: 250))
                : ListView.builder(
                    itemCount: BlocProvider.of<BnsCubit>(context).filteredData.length,
                    itemBuilder: (context, index) {
                      // create var because not write repeat and repeat
                      var DataIndex = BlocProvider.of<BnsCubit>(context).filteredData[index].data() as Map<String, dynamic>;

                      // ---------- Searched and Highlight Searching keywords -----------------
                      String title = DataIndex['Title'].toString().toLowerCase();
                      String bnsNo = DataIndex['BNS_No'].toString().toLowerCase();
                      String ipcNo = DataIndex['IPC_No'].toString().toLowerCase();
                      String desc = DataIndex['Description'].toString();
                      String update = DataIndex['Current_Update'].toString();
                      String searchedLower = searchController.text.toLowerCase();
                      int indexOfQueryTitle = title.indexOf(searchedLower);
                      int indexOfQueryBnsNo = bnsNo.indexOf(searchedLower);
                      int indexOfQueryIPCNo = ipcNo.indexOf(searchedLower);
                      int indexOfQueryDesc = desc.indexOf(searchedLower);
                      int indexOfQueryUpdate = update.indexOf(searchedLower);

                      // Check if indexOfQuery is valid before using it
                      if (indexOfQueryTitle != -1 ||
                          indexOfQueryBnsNo != -1 ||
                          indexOfQueryIPCNo != -1 ||
                          indexOfQueryDesc != -1 ||
                          indexOfQueryUpdate != -1) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BNS_vs_IPC_Details(
                                    BNS_index: DataIndex,
                                  ),
                                ),
                              );
                            },
                            child: Custom_ListTile(
                              top_left_heding: "BNS Sec.",
                              top_right_heding: "IPC Sec.",

                              // ---- BNS Sec --------
                              top_left_text: indexOfQueryBnsNo != -1
                                  ? HighLightText(
                                      mFontSize: 13,
                                      perv_Text: bnsNo.substring(0, indexOfQueryBnsNo),
                                      highlight_Text: bnsNo.substring(indexOfQueryBnsNo, indexOfQueryBnsNo + searchedLower.length),
                                      next_Text: bnsNo.substring(indexOfQueryBnsNo + searchedLower.length),
                                    )
                                  : subheading(subHeading: "${bnsNo}", mFont: 13),

                              // ------- IPC Sec --------
                              top_right_text: indexOfQueryIPCNo != -1
                                  ? HighLightText(
                                      mFontSize: 13,
                                      perv_Text: ipcNo.substring(0, indexOfQueryIPCNo),
                                      highlight_Text: ipcNo.substring(indexOfQueryIPCNo, indexOfQueryIPCNo + searchedLower.length),
                                      next_Text: ipcNo.substring(indexOfQueryIPCNo + searchedLower.length),
                                    )
                                  : subheading(subHeading: "${ipcNo}", mFont: 13),

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
