class TimetableEntry {
  const TimetableEntry({
    required this.courseCode,
    required this.courseName,
    required this.slot,
    required this.venue,
    required this.faculty,
    required this.day,
    required this.startTime,
    required this.endTime,
  });
  final String courseCode, courseName, slot, venue, faculty, day;
  final DateTime startTime, endTime;
}
