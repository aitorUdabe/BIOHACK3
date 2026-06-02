class ClockTime implements Comparable<ClockTime> {
  const ClockTime({required this.hour, required this.minute})
      : assert(hour >= 0 && hour <= 23),
        assert(minute >= 0 && minute <= 59);

  factory ClockTime.fromMinutesSinceMidnight(int minutes) {
    final normalized = minutes % minutesPerDay;
    return ClockTime(hour: normalized ~/ 60, minute: normalized % 60);
  }

  factory ClockTime.parse(String value) {
    final parts = value.split(':');
    if (parts.length != 2) {
      throw FormatException('Expected HH:mm value', value);
    }
    return ClockTime(hour: int.parse(parts[0]), minute: int.parse(parts[1]));
  }

  static const minutesPerDay = 24 * 60;

  final int hour;
  final int minute;

  int get minutesSinceMidnight => hour * 60 + minute;

  ClockTime add(Duration duration) {
    return ClockTime.fromMinutesSinceMidnight(
      minutesSinceMidnight + duration.inMinutes,
    );
  }

  DateTime onDate(DateTime date) {
    return DateTime(date.year, date.month, date.day, hour, minute);
  }

  DateTime nextOccurrenceOnOrAfter(DateTime anchorDate) {
    final candidate = onDate(anchorDate);
    if (candidate.isBefore(anchorDate)) {
      return candidate.add(const Duration(days: 1));
    }
    return candidate;
  }

  Duration differenceTo(ClockTime other) {
    final diff = other.minutesSinceMidnight - minutesSinceMidnight;
    return Duration(minutes: diff >= 0 ? diff : diff + minutesPerDay);
  }

  @override
  int compareTo(ClockTime other) {
    return minutesSinceMidnight.compareTo(other.minutesSinceMidnight);
  }

  @override
  String toString() {
    final hh = hour.toString().padLeft(2, '0');
    final mm = minute.toString().padLeft(2, '0');
    return '$hh:$mm';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ClockTime && hour == other.hour && minute == other.minute;
  }

  @override
  int get hashCode => Object.hash(hour, minute);
}
