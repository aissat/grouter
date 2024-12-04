import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key, required this.title, this.route});
  final String title;
  final String? route;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title),
        if (route != null)
          TextButton(
            child: Text('Go to $route'),
            onPressed: () => context.push(route!),
          ),
      ],
    );
  }
}
