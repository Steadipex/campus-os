import 'package:campus_os/features/timetable/data/timetable_repository.dart';
import 'package:campus_os/features/timetable/models/timetable_entry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableRepositoryProvider = Provider<TimetableRepository>(
  (ref) => const TimetableRepository(),
);
final mondayTimetableProvider = FutureProvider<List<TimetableEntry>>(
  (ref) => ref.watch(timetableRepositoryProvider).getEntriesForDay('Monday'),
);
