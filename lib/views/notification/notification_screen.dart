import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return NotificationList(
                  title: data[index]['title']!,
                  subtitle: data[index]['detail']!,
                  icon: Icons.arrow_upward,
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: data.length)),
    );
  }
}

class NotificationList extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData? icon;
  const NotificationList({
    Key? key,
    required this.title,
    required this.subtitle,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.red.withOpacity(0.2), shape: BoxShape.circle),
        child: Icon(
          icon ?? Icons.message,
          color: Colors.red,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      isThreeLine: true,
    );
  }
}

const data = [
  {
    'title': 'You can start trading RCX',
    "detail": "You can start trading RCX on our platform",
  },
  {
    "title": "New Message",
    "detail": "Max bill sent a new message about money management"
  }
];
