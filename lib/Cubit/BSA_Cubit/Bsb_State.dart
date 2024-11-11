import 'package:flutter/cupertino.dart';

@immutable
abstract class BSB_State {}

class BSBInitialState extends BSB_State {}

class BSBLoadingState extends BSB_State {}

class BSBLoadedState extends BSB_State {}

class BSBErrorState extends BSB_State {}