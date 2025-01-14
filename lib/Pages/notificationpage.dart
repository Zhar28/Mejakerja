import 'package:flutter/material.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> notifications = [
      {'title': 'New Message', 'subtitle': 'You have a new message from John'},
      {'title': 'Update Available', 'subtitle': 'A new update is available for your app'},
      {'title': 'Reminder', 'subtitle': 'Don\'t forget your meeting at 3 PM'},
      {'title': 'Promotion', 'subtitle': 'Check out our latest offers!'},
      {'title': 'Alert', 'subtitle': 'Your password will expire in 3 days'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final title = notifications[index]['title'] ?? 'No Title';
          final subtitle = notifications[index]['subtitle'] ?? 'No Subtitle';
          return ListTile(
            leading: const Icon(Icons.notifications),
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              // Add your onTap functionality here if needed
            },
          );
        },
      ),
    );
  }
}
