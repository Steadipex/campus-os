import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  static const courses = [
    ('CSE2001', 'Data Structures and Algorithms', 'Sowjanya'),
    ('CSE3002', 'Artificial Intelligence', 'Afzal Hussain'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Courses')),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: courses.length,
        separatorBuilder: (_, _) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final course = courses[index];
          return Card(child: ListTile(
            leading: CircleAvatar(child: Text(course.$1.substring(0, 1))),
            title: Text(course.$2),
            subtitle: Text('${course.$1} • ${course.$3}'),
            trailing: const Icon(Icons.chevron_right),
          ));
        },
      ),
    );
  }
}
