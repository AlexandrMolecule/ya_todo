abstract class DateUtil {
  DateUtil._();

  static int _toUnixTime(final DateTime dateTime) =>
      dateTime.millisecondsSinceEpoch ~/ 1000;

  static DateTime _fromUnixTime(final int millisecondsSinceEpoch) =>
      DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch * 1000)
          .toUtc();

  static DateTime fromJson(final Object? date) {
    if (date is int) {
      return _fromUnixTime(date);
    } else {
      throw FormatException('Invalid date type: ${date.runtimeType}');
    }
  }

  static DateTime? nullDateFromJson(final Object? date) {
    if (date is int) {
      return _fromUnixTime(date);
    } else if (date == null) {
      return null;
    } else {
      throw FormatException('Invalid date type: ${date.runtimeType}');
    }
  }

  static int? toJson(final DateTime? date) {
    if (date != null) {
      return _toUnixTime(date);
    } else {
      return null;
    }
  }
}
