import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const CircleAvatar(radius: 42, child: Icon(Icons.person, size: 44)),
          const SizedBox(height: 16),
          Center(child: Text('Student', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700))),
          const SizedBox(height: 4),
          Center(child: Text('VIT-AP University', style: Theme.of(context).textTheme.bodyLarge)),
          const SizedBox(height: 28),
          Card(child: Column(children: const [
            ListTile(leading: Icon(Icons.badge_outlined), title: Text('Student ID'), subtitle: Text('Not connected yet')),
            ListTile(leading: Icon(Icons.email_outlined), title: Text('Email'), subtitle: Text('Not connected yet')),
          ])),
          const SizedBox(height: 12),
          Card(child: ListTile(leading: const Icon(Icons.info_outline), title: const Text('About CampusOS'), trailing: const Icon(Icons.chevron_right), onTap: () {})),
        ],
      ),
    );
  }
}
