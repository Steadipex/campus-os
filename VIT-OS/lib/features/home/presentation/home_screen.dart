import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CampusOS')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text('Good morning 👋', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 6),
          Text('Here is what is happening on your campus today.', style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 24),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Today's overview", style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
                const SizedBox(height: 16),
                const _OverviewRow(icon: Icons.calendar_today_outlined, title: 'Timetable', value: '2 classes'),
                SizedBox(height: 12),
                const _OverviewRow(icon: Icons.check_circle_outline, title: 'Tasks', value: '3 pending'),
                SizedBox(height: 12),
                const _OverviewRow(icon: Icons.campaign_outlined, title: 'Notices', value: '2 new'),
              ]),
            ),
          ),
          const SizedBox(height: 16),
          Text('Quick access', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 12),
          const Row(children: [
            Expanded(child: _QuickCard(icon: Icons.calendar_month, label: 'Timetable')),
            SizedBox(width: 12),
            Expanded(child: _QuickCard(icon: Icons.menu_book, label: 'Courses')),
          ]),
        ],
      ),
    );
  }
}

class _OverviewRow extends StatelessWidget {
  const _OverviewRow({required this.icon, required this.title, required this.value});
  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) => Row(children: [
    Icon(icon, color: Theme.of(context).colorScheme.primary),
    const SizedBox(width: 12),
    Expanded(child: Text(title)),
    Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
  ]);
}

class _QuickCard extends StatelessWidget {
  const _QuickCard({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) => Card(child: Padding(padding: const EdgeInsets.all(18), child: Column(children: [Icon(icon, size: 28), const SizedBox(height: 8), Text(label)])));
}
