import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grouter/core/router/app_routes.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white70,
        border: Border(
          right: BorderSide(
            width: 1,
            color: Colors.black12,
          ),
        ),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: const Text('Page 1'),
            onTap: () => context.go(AppRoutes.page1),
          ),
          ListTile(
            title: const Text('Page 2'),
            onTap: () => context.go(AppRoutes.page2),
          ),
          ListTile(
            title: const Text('Page 3'),
            onTap: () => context.go(AppRoutes.page3),
          ),
        ],
      ),
    );
  }
}
