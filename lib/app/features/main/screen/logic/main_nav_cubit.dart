import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:seat_reservation/core/log/i_log.dart';
import 'package:seat_reservation/core/state_mixins.dart';

import 'main_page_names.dart';

part 'main_nav_state.dart';
part 'main_nav_cubit.freezed.dart';

class MainNavCubit extends Cubit<MainNavState> {
  MainNavCubit() : super(const MainNavState.newIndex(index: 0));

  final PageController _pageController = PageController();
  PageController get pageController => _pageController;

  int get tabNumber => MainTabs.values.length;

  int _index = 0;
  int get index => _index;

  void routeTo(int tabIndex) {
    log.debug('Bottom bar received value: $tabIndex');
    if (tabIndex != _index && tabIndex < tabNumber) {
      _index = tabIndex;
      _pageController.jumpToPage(_index);
      emit(MainNavState.newIndex(index: _index));
    }
  }
}
