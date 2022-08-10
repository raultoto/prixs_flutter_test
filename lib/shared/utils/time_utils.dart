import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TimeUtils {
  static Future<DateTime?> selectDate(BuildContext context) async {
    return await _selectDate(context);
  }

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
