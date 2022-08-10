import 'package:flutter/material.dart';

class TimeUtils {
  static Future<DateTime?> selectDate(BuildContext context) async {
    return await _selectDate(context);
  }

  /// It shows a date picker dialog and returns the selected date.
  ///
  /// Args:
  ///   context (BuildContext): The context of the widget that calls the showDatePicker() method.
  ///
  /// Returns:
  ///   A Future<DateTime?>
  static Future<DateTime?> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2023),
      locale: const Locale('en', 'US'),
    );
    return picked;
  }
}
