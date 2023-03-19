import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:customers_app/logic/Cubit/SmallSharedCubit/small_shared_state.dart';

class SmallSharedCubit extends Cubit<SmallSharedState> {
  SmallSharedCubit() : super(SmallSharedInitial(isDark: false,isEnglish: true));

  bool isCubitDark = false;
  bool isLangEnglish = true;

  void setIsDark(bool val) {
    isCubitDark = val;
    emit(SmallSharedInitial(isDark: val,isEnglish: isLangEnglish));
  }

  void langIsEnglish(bool lang) {
    print(state);
    isLangEnglish = lang;
    emit(SmallSharedInitial(isDark: isCubitDark, isEnglish: lang));
  }
}
