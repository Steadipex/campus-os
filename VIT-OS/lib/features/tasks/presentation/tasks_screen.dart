import 'package:flutter/material.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final _tasks = <String>['DSA assignment', 'AI lab record', 'Review DBMS notes'];
  final _completed = <bool>[false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tasks')),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: _tasks.length,
        separatorBuilder: (_, _) => const SizedBox(height: 8),
        itemBuilder: (context, index) => Card(child: CheckboxListTile(
          value: _completed[index],
          onChanged: (value) => setState(() => _completed[index] = value ?? false),
          title: Text(_tasks[index]),
          secondary: const Icon(Icons.assignment_outlined),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _tasks.add('New task');
          _completed.add(false);
        }),
        child: const Icon(Icons.add),
      ),
    );
  }
}
