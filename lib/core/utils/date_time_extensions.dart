extension DateOnly on DateTime {
  DateTime get dateOnly => DateTime(year, month, day);

  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
}

extension DateTimeClamp on num {
  double clampDouble(double min, double max) {
    return toDouble().clamp(min, max).toDouble();
  }
}
