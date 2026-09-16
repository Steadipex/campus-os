import 'package:campus_os/features/timetable/data/timetable_repository.dart';
import 'package:campus_os/features/timetable/models/timetable_entry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final timetableRepositoryProvider = Provider<TimetableRepository>(
  (ref) => const TimetableRepository(),
);

final timetableProvider = FutureProvider.family<List<TimetableEntry>, String>(
  (ref, day) => ref.watch(timetableRepositoryProvider).getEntriesForDay(day),
);
