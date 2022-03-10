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
        loaded: (state) => ListView.builder(
          itemCount: state.bookings.length,
          itemBuilder: (context, index) {
            final booking = state.bookings[index];
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.wifi_protected_setup_outlined),
                              Text(
                                '#${booking.id}',
                                style: TextStyles.appBarTitle,
                              ),
                            ],
                          ),
                          Text(
                            booking.createdAt.toString(),
                            style: TextStyles.cardDate,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        '${booking.officeName} #${booking.officeId}',
                        style: TextStyles.cardText,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Место: ${booking.workplaceId}',
                        style: TextStyles.cardText,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
