import 'package:flutter/material.dart';

class UiKitTextField extends TextField {
  final String? hintText;
  const UiKitTextField({super.key, this.hintText, super.obscureText, super.controller});

  @override
  InputDecoration? get decoration => InputDecoration(
    hintText: hintText,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(32)
    ),
  );

}