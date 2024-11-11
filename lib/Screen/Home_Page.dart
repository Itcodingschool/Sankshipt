import 'package:bns_vs_ipc/App_Widget/Button_Searching_Widget.dart';
import 'package:bns_vs_ipc/App_Widget/Searching_Widget.dart';
import 'package:bns_vs_ipc/Cubit/BNSS_Cubit/BNSS_cubit.dart';
import 'package:bns_vs_ipc/Cubit/BSA_Cubit/Bsb_Cubit.dart';
import 'package:bns_vs_ipc/Cubit/Bns_Cubit/bns_cubit.dart';
import 'package:bns_vs_ipc/Screen/Searching_Show_List.dart';
import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home_Page_Screen extends StatefulWidget {
  @override
  State<Home_Page_Screen> createState() => _Home_Page_ScreenState();
}

class _Home_Page_ScreenState extends State<Home_Page_Screen> {
  TextEditingController searchController = TextEditingController();
  late BnsCubit getBns_Cubit;
  late BnssCubit getBnss_Cubit;
  late BsbCubit getBsb_Cubit;
  String active = "BNS";
  String? searchEmptyMessage = "";

  @override
  void initState() {
    super.initState();
    // Access the BnsCubit instance using BlocProvider
    getBns_Cubit = BlocProvider.of<BnsCubit>(context);
    getBnss_Cubit = BlocProvider.of<BnssCubit>(context);
    getBsb_Cubit = BlocProvider.of<BsbCubit>(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      bottomNavigationBar: BottomAppBar(
        height: 55,
        color: Colors.grey.shade50,
        padding: EdgeInsets.only(left: 10, right: 10),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              paragraphText(
                text: "Copyright © Nidhin Valsan and Kapil Goel",
                textColor: Colors.black54,
              ),
              // heightSpacer(mHeight: 2),
              // InkWell(
              //   onTap: () {
              //     launchUrl(Uri(host: 'www.google.com'));
              //   },
              //   child: paragraphText(
              //     text: "Powered by Mindsmiratus",
              //     textColor: Colors.black54,
              //   ),
              // ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/image/bg_ic_2.png"), opacity: 0.04),
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                heightSpacer(mHeight: 20),
                Text("संक्षिप्त", style: mTextStyle20(mColor: AppColor.darkBlue, mFontWeight: FontWeight.w600)),
                 heightSpacer(mHeight: 10),
                Text("Developed By",
                    style: mTextStyle16(mColor: AppColor.black, mFontWeight: FontWeight.w600),
                ),

                // heightSpacer(mHeight: 5),
                Text("Outer North District Delhi Police",
                    style: mTextStyle20(mColor: AppColor.darkBlue, mFontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),

                heightSpacer(mHeight: 100),
                Image.asset("assets/image/bg_ic_2.png", width: 130),

                heightSpacer(mHeight: 30),

                // ------- Search Field ---------------
                Container(
                  width: MediaQuery.of(context).size.width <= 360 ? MediaQuery.of(context).size.width : 450,
                  child: Searching_Widget(
                    searchController: searchController,
                    hintText: "Enter Something",
                    onChanged: (value) {
                      setState(() {
                        searchEmptyMessage = "";
                        // searchController.text = value;
                      });
                    },
                    clearOnPressed: () {
                      setState(() {
                        getBns_Cubit.filteredData.clear();
                        getBnss_Cubit.filteredBnssData.clear();
                        getBsb_Cubit.filteredBsbData.clear();
                        searchController.clear();
                        FocusScope.of(context).unfocus();
                      });
                    },
                  ),
                ),

                searchEmptyMessage == ""
                    ? Container()
                    : Container(
                        margin: EdgeInsets.symmetric(vertical: 4),
                        alignment: Alignment.topLeft,
                        child: paragraphText(text: "${searchEmptyMessage}", textColor: Colors.red),
                      ),

                //========== options ===================
                heightSpacer(),
                Button_Searching_Widget(
                  // -------- BNS Button ---------------
                  BNS_OnPressed: () {
                    active = "BNS";
                    setState(() {});
                  },
                  BNS_BtnBg: active == "BNS" ? AppColor.darkBlue : Colors.transparent,
                  BNS_BorderColor: active == "BNS" ? AppColor.darkBlue : Colors.grey,
                  BNS_TextColor: active == "BNS" ? Colors.white : AppColor.darkBlue,

                  // -------- BNSS Button ---------------
                  BNSS_OnPressed: () {
                    active = "BNSS";
                    setState(() {});
                  },
                  BNSS_BtnBg: active == "BNSS" ? AppColor.darkBlue : Colors.transparent,
                  BNSS_BorderColor: active == "BNSS" ? AppColor.darkBlue : Colors.grey,
                  BNSS_TextColor: active == "BNSS" ? Colors.white : AppColor.darkBlue,

                  // -------- BSA Button ---------------
                  BSB_OnPressed: () {
                    active = "BSA";
                    setState(() {});
                  },
                  BSB_BtnBg: active == "BSA" ? AppColor.darkBlue : Colors.transparent,
                  BSB_BorderColor: active == "BSA" ? AppColor.darkBlue : Colors.grey,
                  BSB_TextColor: active == "BSA" ? Colors.white : AppColor.darkBlue,
                ),

                //========= button -=======================
                heightSpacer(mHeight: 25),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      // padding: EdgeInsets.symmetric(horizontal: 50),
                      minimumSize: Size(180, 45),
                      backgroundColor: AppColor.darkBlue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  child: Text("Search", style: mTextStyle16(mColor: AppColor.white)),
                  onPressed: () {
                    NavigateToPage();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ------------- Navigate to page on Search button click --------------------
  void NavigateToPage() {
    if (searchController.text.isEmpty) {
      setState(() {
        searchEmptyMessage = "Please Enter Something";
      });
    } else {
      // ---------- Navigate to BNS_vs_IPC Screen ----------------
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Searching_Show_List(
            SearchText: searchController.text,
            isActive: active,
          ),
        ),
      );
    }
  }
}
