import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rz_test/domain/uimodel/unknown.dart';
import 'package:rz_test/presenter/bloc/unknown/unknown_cubit.dart';
import 'package:rz_test/presenter/bloc/user/user_cubit.dart';
import 'package:rz_test/presenter/uikit/item_unknown.dart';
import 'package:rz_test/presenter/uikit/not_logged_in.dart';
import 'package:rz_test/injection.dart' as di;
import 'package:fluttertoast/fluttertoast.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserCubit, UserState>(
        builder: (_, state) {
          return SafeArea(
            child: state.maybeWhen(
              isLoggedIn: (status) {
                if (status) {
                  return _loggedInWidget();
                } else {
                  return const Center(
                    child: UiKitNotLoggedIn(),
                  );
                }
              },
              orElse: () => Container()
            )
          );
        },
      ),
    );
  }

  Widget _loggedInWidget() {
    return BlocProvider(
      create: (_) => di.locator<UnknownCubit>()..getListUnknown(),
      child: BlocConsumer<UnknownCubit, UnknownState>(
        listener: (_, state) {
          if (state is UnknownError) {
            Fluttertoast.showToast(msg: state.message);
          }
        },
        builder: (_, state) {
          return state.maybeWhen(
            isLoading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            hasListUnknown: (list) {
              if (list.isNotEmpty) {
                return _listUnknownWidget(list);
              }

              return const Center(
                child: Text('List empty'),
              );
            },
            orElse: () => const Center(
              child: Text('Cannot found anything'),
            )
          );
        },
      ),
    );
  }

  Widget _listUnknownWidget(List<UnknownUiModel> list) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (_, index) {
        return UiKitItemUnknown(data: list[index]);
      }
    );
  }
}
