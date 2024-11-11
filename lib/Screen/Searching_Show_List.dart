import 'package:bns_vs_ipc/App_Widget/Button_Searching_Widget.dart';
import 'package:bns_vs_ipc/App_Widget/Searching_Widget.dart';
import 'package:bns_vs_ipc/Cubit/BNSS_Cubit/BNSS_cubit.dart';
import 'package:bns_vs_ipc/Cubit/BSA_Cubit/Bsb_Cubit.dart';
import 'package:bns_vs_ipc/Cubit/Bns_Cubit/bns_cubit.dart';
import 'package:bns_vs_ipc/Screen/BNSS_List.dart';
import 'package:bns_vs_ipc/Screen/BNS_vs_IPC_List.dart';
import 'package:bns_vs_ipc/Screen/BSA_vs_IEA_list.dart';
import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class Searching_Show_List extends StatefulWidget {
  final String SearchText;
  String isActive;
  Searching_Show_List({required this.SearchText, required this.isActive});

  @override
  State<Searching_Show_List> createState() => _Searching_Show_ListState();
}

class _Searching_Show_ListState extends State<Searching_Show_List> {
  TextEditingController searchController = TextEditingController();
  late BnsCubit getcubit;
  late BnssCubit getBnss_Cubit;
  late BsbCubit getBsb_Cubit;

  @override
  void initState() {
    super.initState();
    // get all data using BlocProvider
    getcubit = BlocProvider.of<BnsCubit>(context);
    getBnss_Cubit = BlocProvider.of<BnssCubit>(context);
    getBsb_Cubit = BlocProvider.of<BsbCubit>(context);

    // ------ searched ----------
    getcubit.searchBNS(widget.SearchText);
    getBnss_Cubit.searchBNSS(widget.SearchText);
    getBsb_Cubit.searchBSA(widget.SearchText);

    // -------- Insert Searched text into TextEditingController ------------
    searchController = TextEditingController(text: widget.SearchText);
  }

  @override
  void dispose() {
    // Dispose the TextEditingController when the widget is disposed
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        titleSpacing: 0,
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Padding(
            padding: EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("संक्षिप्त", style: mTextStyle18(mColor: AppColor.darkBlue, mFontWeight: FontWeight.w600)),
                // Text("(Developed By Delhi Police Academy)",
                //     style: mTextStyle12(mColor: AppColor.darkBlue, mFontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   height: 55,
      //   color: Colors.grey.shade50,
      //   padding: EdgeInsets.only(left: 10, right: 10),
      //   child: FittedBox(
      //     fit: BoxFit.scaleDown,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         paragraphText(
      //           text: "© Chhaya Sharma IPS, Nidhin Valsan IPS and Kapil Goel",
      //           textColor: Colors.black54,
      //         ),
      //         heightSpacer(mHeight: 2),
      //         InkWell(
      //           onTap: () {
      //             launchUrl(Uri(host: 'www.google.com'));
      //           },
      //           child: paragraphText(
      //             text: "Powered by Mindsmiratus",
      //             textColor: Colors.black54,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage("assets/image/bg_ic_2.png"), opacity: 0.06),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightSpacer(mHeight: 3),
            // ------- Search Field ---------------
            SizedBox(
              height: 40,
              child: Searching_Widget(
                searchController: searchController,
                hintText: "Enter Something",
                onChanged: (value) {
                  setState(() {
                    // searchController.text = value;
                    BlocProvider.of<BnsCubit>(context).searchBNS(value);
                    BlocProvider.of<BnssCubit>(context).searchBNSS(value);
                    BlocProvider.of<BsbCubit>(context).searchBSA(value);
                  });
                },
                clearOnPressed: () {
                  setState(() {
                    searchController.clear();
                    FocusScope.of(context).unfocus();
                  });
                },
              ),
            ),

            //========== options ===================
            heightSpacer(),
            Button_Searching_Widget(
              // -------- BNS Button ---------------
              BNS_OnPressed: () {
                widget.isActive = "BNS";
                setState(() {});
              },
              BNS_BtnBg: widget.isActive == "BNS" ? AppColor.darkBlue : Colors.transparent,
              BNS_BorderColor: widget.isActive == "BNS" ? AppColor.darkBlue : Colors.grey,
              BNS_TextColor: widget.isActive == "BNS" ? Colors.white : AppColor.darkBlue,

              // -------- BNSS Button ---------------
              BNSS_OnPressed: () {
                widget.isActive = "BNSS";
                setState(() {});
              },
              BNSS_BtnBg: widget.isActive == "BNSS" ? AppColor.darkBlue : Colors.transparent,
              BNSS_BorderColor: widget.isActive == "BNSS" ? AppColor.darkBlue : Colors.grey,
              BNSS_TextColor: widget.isActive == "BNSS" ? Colors.white : AppColor.darkBlue,

              // -------- BSA Button ---------------
              BSB_OnPressed: () {
                widget.isActive = "BSA";
                setState(() {});
              },
              BSB_BtnBg: widget.isActive == "BSA" ? AppColor.darkBlue : Colors.transparent,
              BSB_BorderColor: widget.isActive == "BSA" ? AppColor.darkBlue : Colors.grey,
              BSB_TextColor: widget.isActive == "BSA" ? Colors.white : AppColor.darkBlue,
            ),

            heightSpacer(mHeight: 15),
            // ------------- Display List BNS_vs_IPC ------------
            if (widget.isActive == "BNS")
              Expanded(
                child: BNS_vs_IPC_List(searchController: searchController),
              )

            // ------------- Display List BNSS ------------
            else if (widget.isActive == "BNSS")
              Expanded(
                child: BNSS_List(searchController: searchController),
              )

            // ------------- Display List BNSS ------------
            else
              Expanded(
                child: BSB_vs_IEA(searchController: searchController),
              )
          ],
        ),
      ),
    );
  }
}
