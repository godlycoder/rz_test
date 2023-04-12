import 'package:flutter/material.dart';
import 'package:rz_test/domain/uimodel/unknown.dart';

class UiKitItemUnknown extends StatelessWidget {
  final UnknownUiModel data;
  const UiKitItemUnknown({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              color: data.color,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                  Text(data.year),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
