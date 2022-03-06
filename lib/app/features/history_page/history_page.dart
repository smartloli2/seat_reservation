import 'package:flutter/material.dart';
import 'package:seat_reservation/app/features/history_page/logic/history_cubit.dart';
import 'package:seat_reservation/core/base_state.dart';
import 'package:seat_reservation/core/constants/custom_colors.dart';
import 'package:seat_reservation/core/constants/text_styles.dart';
import 'package:seat_reservation/core/widgets/loading_widget.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage();

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState
    extends BaseState<HistoryPage, HistoryCubit, HistoryState> {
  @override
  Widget builder(BuildContext context, HistoryState state) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.dark,
        title: Text(
          cubit.pageTitle,
          textAlign: TextAlign.center,
          style: TextStyles.appBarTitle,
        ),
      ),
      body: state.maybeMap(
        orElse: () => const LoadingWidget(),
      ),
    );
  }
}
