import 'package:flutter/material.dart';
import 'package:grouter/features/home/view/widgets/side_menu.dart';

/// HomeScreen serves as a layout template for the home section
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.child});
  
  /// The content to display in the main area
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Layout structure - Side menu
        const Flexible(child: SideMenu()),
        // Content area - Displays the child widget
        Expanded(flex: 3, child: child),
      ],
    );
  }
}
