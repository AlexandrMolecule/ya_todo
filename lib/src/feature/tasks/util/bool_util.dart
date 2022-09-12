abstract class BoolUtil {
  BoolUtil._();

  static bool fromJson(final Object item) {
    if (item is bool) {
      return item;
    } else if (item is int) {
      if (item == 0) {
        return false;
      }
      if (item == 1) {
        return true;
      } else {
        throw FormatException('Invalid bool type: ${item.runtimeType}');
      }
    } else {
      throw FormatException('Invalid bool type: ${item.runtimeType}');
    }
  }
}
