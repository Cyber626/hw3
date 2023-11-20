import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About this app'),
      ),
      body: Center(
        child: Text(
          'This is simple application done as homework',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
