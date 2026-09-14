import 'package:campus_os/features/timetable/models/timetable_entry.dart';

class TimetableRepository {
  const TimetableRepository();
  Future<List<TimetableEntry>> getEntriesForDay(String day) async {
    await Future<void>.delayed(const Duration(milliseconds: 250));
    return _mockEntries.where((entry) => entry.day == day).toList();
  }
}

final _mockEntries = [
  TimetableEntry(
    courseCode: 'CSE2001',
    courseName: 'Data Structures and Algorithms',
    slot: 'E2 + TE2',
    venue: '316-CB',
    faculty: 'Sowjanya',
    day: 'Monday',
    startTime: DateTime(2026, 9, 14, 10),
    endTime: DateTime(2026, 9, 14, 11, 40),
  ),
  TimetableEntry(
    courseCode: 'CSE3002',
    courseName: 'Artificial Intelligence',
    slot: 'C2 + TC2',
    venue: '204-CB',
    faculty: 'Afzal Hussain',
    day: 'Monday',
    startTime: DateTime(2026, 9, 14, 12),
    endTime: DateTime(2026, 9, 14, 13, 40),
  ),
];
