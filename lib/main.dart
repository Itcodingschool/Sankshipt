import 'package:bns_vs_ipc/Cubit/BNSS_Cubit/BNSS_cubit.dart';
import 'package:bns_vs_ipc/Cubit/BSA_Cubit/Bsb_Cubit.dart';
import 'package:bns_vs_ipc/Cubit/Bns_Cubit/bns_cubit.dart';
import 'package:bns_vs_ipc/Provider/provider.dart';
import 'package:bns_vs_ipc/Splash_Screen/Splash_Screen.dart';
import 'package:bns_vs_ipc/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

void main() async {
  // ======== Connecting Firebase database  ===========
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent),
    );
    return ChangeNotifierProvider(
      create: (context) => TranslatorProvider(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<BnsCubit>(create: (context) => BnsCubit()),
          BlocProvider<BnssCubit>(create: (context) => BnssCubit()),
          BlocProvider<BsbCubit>(create: (context) => BsbCubit()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Criminal Law Amendment',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: Splash_Screen(),
        ),
      ),
    );
  }
}
