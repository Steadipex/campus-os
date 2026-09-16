import 'package:campus_os/core/shell/app_shell.dart';
import 'package:go_router/go_router.dart';

abstract final class AppRoute {
  static const home = '/';
}

final appRouter = GoRouter(
  initialLocation: AppRoute.home,
  routes: [
    GoRoute(
      path: AppRoute.home,
      builder: (context, state) => const AppShell(),
    ),
  ],
);
