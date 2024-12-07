import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Screen')),
      body: Column(
        children: [
          ListTile(
            title: Text('Find Specialists'),
            onTap: () => Navigator.pushNamed(context, '/specialistFinder'),
          ),
          ListTile(
            title: Text('Chat'),
            onTap: () => Navigator.pushNamed(context, '/chat'),
          ),
          ListTile(
            title: Text('Map'),
            onTap: () => Navigator.pushNamed(context, '/map'),
          ),
        ],
      ),
    );
  }
}
