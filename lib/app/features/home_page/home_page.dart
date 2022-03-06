import 'package:flutter/material.dart';
import 'package:seat_reservation/app/features/home_page/logic/home_cubit.dart';
import 'package:seat_reservation/core/base_state.dart';
import 'package:seat_reservation/core/constants/custom_colors.dart';
import 'package:seat_reservation/core/constants/text_styles.dart';
import 'package:seat_reservation/core/widgets/loading_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomeCubit, HomeState> {
  @override
  Widget builder(BuildContext context, HomeState state) {
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
        loaded: (loadedState) => Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
          child: ListView.builder(
            itemCount: loadedState.offices.length,
            itemBuilder: (context, index) {
              final office = loadedState.offices[index];
              print(office);
              return Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "${office.name} #${office.number}",
                    style: TextStyles.officeCardTitle,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
