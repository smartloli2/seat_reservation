import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seat_reservation/app/features/home_page/screen/logic/home_cubit.dart';
import 'package:seat_reservation/app/features/home_page/widgets/office_details/office_details_widget.dart';
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
        centerTitle: true,
        leading: cubit.showArrowBack
            ? IconButton(
                onPressed: cubit.loadList,
                icon: const Icon(CupertinoIcons.back),
              )
            : null,
      ),
      body: state.maybeMap(
        orElse: () => const LoadingWidget(),
        listLoaded: (state) => Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
          child: ListView.builder(
            itemCount: state.offices.length,
            itemBuilder: (context, index) {
              final office = state.offices[index];
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 3,
                child: InkWell(
                  onTap: () => cubit.toDetails(office),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "${office.name} #${office.id}",
                      style: TextStyles.officeCardTitle,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        detailsLoaded: (state) => OfficeDetailsWidget(state.office),
      ),
    );
  }
}
