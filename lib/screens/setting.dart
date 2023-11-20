import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() {
    return _SettingScreenState();
  }
}

class _SettingScreenState extends State<SettingScreen> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          const Text('This feature is not working for now'),
          SwitchListTile(
            value: isDark,
            onChanged: (value) {
              setState(() {
                isDark = value;
              });
            },
            title: const Text('Dark theme'),
            subtitle: const Text('Select whether dark or light theme'),
          ),
        ],
      ),
    );
  }
}
