import 'package:campus_os/features/timetable/presentation/timetable_screen.dart';
import 'package:go_router/go_router.dart';

abstract final class AppRoute {
  static const timetable = '/';
}

final appRouter = GoRouter(
  initialLocation: AppRoute.timetable,
  routes: [
    GoRoute(
      path: AppRoute.timetable,
      builder: (context, state) => const TimetableScreen(),
    ),
  ],
);
