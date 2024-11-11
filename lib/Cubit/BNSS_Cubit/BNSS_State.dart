import 'package:flutter/cupertino.dart';

@immutable
abstract class BNSS_State {}

class BNSSInitialState extends BNSS_State {}

class BNSSLoadingState extends BNSS_State {}

class BNSSLoadedState extends BNSS_State {}

class BNSSErrorState extends BNSS_State {}