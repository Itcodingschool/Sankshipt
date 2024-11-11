import 'package:flutter/cupertino.dart';

@immutable
abstract class BNS_State {}

class BNSInitialState extends BNS_State {}

class BNSLoadingState extends BNS_State {}

class BNSLoadedState extends BNS_State {}

class BNSTranslatorDoneState extends BNS_State {
  final bool getTranslate = false;
  BNSTranslatorDoneState(getTranslate);
}

class BNSErrorState extends BNS_State {}
