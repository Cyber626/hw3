import 'package:flutter/material.dart';
import 'package:hw3/screens/about.dart';
import 'package:hw3/screens/favorite.dart';
import 'package:hw3/screens/home.dart';
import 'package:hw3/screens/setting.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int pageIndex = 0;
  Widget currentScreen = const HomeScreeen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primaryContainer,
                    Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withOpacity(0.8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.fastfood,
                    size: 48,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Cooking...',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text('Settings'),
              onTap: () {
                //Poping drawer
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctn) => const SettingScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('About'),
              onTap: () {
                //Poping drawer
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctn) => const AboutScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            pageIndex = index;
            if (index == 1) {
              currentScreen = const FavoriteScreen();
            } else {
              currentScreen = const HomeScreeen();
            }
          });
        },
        currentIndex: pageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.set_meal), label: 'Meals list'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites'),
        ],
      ),
    );
  }
}
