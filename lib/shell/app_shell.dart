import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// AppShell serves as the main container for the entire app
/// It provides the bottom navigation and handles navigation between main sections
class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.shell});
  
  /// The navigation shell that manages the state and navigation
  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: shell,
      bottomNavigationBar: BottomNavigationBar(
        onTap: shell.goBranch,
        currentIndex: shell.currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
