import 'package:campus_os/features/courses/presentation/courses_screen.dart';
import 'package:campus_os/features/home/presentation/home_screen.dart';
import 'package:campus_os/features/profile/presentation/profile_screen.dart';
import 'package:campus_os/features/tasks/presentation/tasks_screen.dart';
import 'package:campus_os/features/timetable/presentation/timetable_screen.dart';
import 'package:flutter/material.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _selectedIndex = 0;

  static const _pages = <Widget>[
    HomeScreen(),
    TimetableScreen(),
    CoursesScreen(),
    TasksScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) =>
            setState(() => _selectedIndex = index),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.calendar_today_outlined), selectedIcon: Icon(Icons.calendar_today), label: 'Timetable'),
          NavigationDestination(icon: Icon(Icons.menu_book_outlined), selectedIcon: Icon(Icons.menu_book), label: 'Courses'),
          NavigationDestination(icon: Icon(Icons.check_circle_outline), selectedIcon: Icon(Icons.check_circle), label: 'Tasks'),
          NavigationDestination(icon: Icon(Icons.person_outline), selectedIcon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
