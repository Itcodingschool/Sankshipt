import 'dart:async';
import 'dart:developer';

import 'package:bns_vs_ipc/Cubit/BNSS_Cubit/BNSS_State.dart';
import 'package:bns_vs_ipc/Cubit/BNSS_Cubit/BNSS_cubit.dart';
import 'package:bns_vs_ipc/Cubit/BSA_Cubit/Bsb_Cubit.dart';
import 'package:bns_vs_ipc/Cubit/BSA_Cubit/Bsb_State.dart';
import 'package:bns_vs_ipc/Cubit/Bns_Cubit/bns_cubit.dart';
import 'package:bns_vs_ipc/Cubit/Bns_Cubit/bns_state.dart';
import 'package:bns_vs_ipc/Screen/Home_Page.dart';
import 'package:bns_vs_ipc/Ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splash_Screen extends StatefulWidget {
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  bool _isBnsLoaded = false;
  bool _isBnssLoaded = false;
  bool _isBsbLoaded = false;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<BnsCubit>(context).getBNSData();
    BlocProvider.of<BnssCubit>(context).getBNSSData();
    BlocProvider.of<BsbCubit>(context).getBSBData();
    // _LoggedInCheckAnd_Navigate();
  }

  void _checkAllLoaded() {
    if (_isBnsLoaded && _isBnssLoaded && _isBsbLoaded) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home_Page_Screen()),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: MultiBlocListener(
        listeners: [
          BlocListener<BnsCubit, BNS_State>(
            listener: (context, state) {
              if (state is BNSLoadedState) {
                _isBnsLoaded = true;
                _checkAllLoaded();
              }
            },
          ),
          BlocListener<BnssCubit, BNSS_State>(
            listener: (context, state) {
              if (state is BNSSLoadedState) {
                _isBnssLoaded = true;
                _checkAllLoaded();
              }
            },
          ),
          BlocListener<BsbCubit, BSB_State>(
            listener: (context, state) {
              if (state is BSBLoadedState) {
                _isBsbLoaded = true;
                _checkAllLoaded();
              }
            },
          ),
        ],
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/bg1.jpg"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  heading(subHeading: "संक्षिप्त", mFont: 27, mColor: Color(0xff007586)),
                  subheading(subHeading: "(Criminal Law Amendment)", mFont: 13),
                  heightSpacer(mHeight: 4),
                  subheading(subHeading: "Developed By Outer North District \nDelhi Police", mFont: 16),

                  Container(
                    margin: EdgeInsets.only(top: 13),
                    padding: EdgeInsets.symmetric(horizontal: 90),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.indigo.shade200,
                      color: AppColor.darkBlue,
                    ),
                  ),
                  heightSpacer(mHeight: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
