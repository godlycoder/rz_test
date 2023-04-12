import 'package:flutter/material.dart';

class UiKitNotLoggedIn extends StatelessWidget {
  const UiKitNotLoggedIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: const [
        Text('You must be logged in'),
        Padding(
          padding: EdgeInsets.only(top: 30),
          child: Icon(Icons.cancel, size: 72),
        )
      ],
    );
  }
}
