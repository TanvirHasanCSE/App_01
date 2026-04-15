import 'package:flutter/material.dart';
// Ensure this path matches your actual file structure
import 'package:module_15/screen/prograss_task_screen.dart';

import '../widget/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  // Optimized list: Ensure the number of screens matches NavigationBar destinations
  final List<Widget> _screens = [
    PrograssTaskScreen(title: "New"),
    PrograssTaskScreen(title: 'Progress'),
    PrograssTaskScreen(title: 'Cancelled'),
    PrograssTaskScreen(title: 'Completed'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMappBar(),

      // The body updates based on the selected index
      body: _screens[_selectedIndex],

      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.assignment_outlined),
            selectedIcon: Icon(Icons.assignment),
            label: "New",
          ),
          NavigationDestination(
            icon: Icon(Icons.rotate_right),
            label: "Progress",
          ),
          NavigationDestination(
            icon: Icon(Icons.cancel_presentation),
            label: "Cancelled",
          ),
          NavigationDestination(
            icon: Icon(Icons.check_circle_outline),
            selectedIcon: Icon(Icons.check_circle),
            label: "Completed",
          ),
        ],
      ),
    );
  }
}

