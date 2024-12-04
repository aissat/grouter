import 'package:flutter/material.dart';
import 'package:grouter/features/home/view/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Flexible(child: SideMenu()),
        Expanded(flex: 3, child: child),
      ],
    );
  }
}
