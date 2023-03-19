import 'dart:ui';

import 'package:equatable/equatable.dart';

abstract class SmallSharedState extends Equatable {
  const SmallSharedState();
}

class SmallSharedInitial extends SmallSharedState {
  late bool? isDark ;
  late bool? isEnglish ;

  SmallSharedInitial({ this.isDark,  this.isEnglish});

  @override
  List<Object> get props => [isDark??false, isEnglish??false];
}
