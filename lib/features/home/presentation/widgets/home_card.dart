import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String title;

  const HomeCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text(title, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
