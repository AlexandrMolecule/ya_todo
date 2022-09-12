import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateFormatter on DateTime {
  String formatedString(BuildContext context) {
    final locale = Localizations.localeOf(context).languageCode;

    final dayMonth = DateFormat.MMMMd(locale).format(this);
    final year = DateFormat.y(locale).format(this);
    // final sss = DateFormat.yMMMMd(locale).format(this);

    return '$dayMonth $year';
  }
}
