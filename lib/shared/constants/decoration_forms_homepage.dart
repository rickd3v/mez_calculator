import 'package:flutter/material.dart';
import 'package:mez_calc/shared/constants/custom_colors.dart';

InputDecoration getFormsInputDecoration(String label) {
  return InputDecoration(
    hintText: label,
    contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: const BorderSide(color: Colors.black, width: 2),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
      borderSide: BorderSide(
          color: CustomColors().getActivePrimaryButtonColor(), width: 3),
    ),
  );
}
