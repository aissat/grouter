import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grouter/core/router/app_routes.dart';
import 'package:grouter/core/router/routes/tabed_routes.dart';
import 'package:grouter/features/home/home_screen.dart';
import 'package:grouter/features/home/view/pages/home_content_page.dart';

class HomeRoutes {
  static final page1Route = GoRoute(
    path: AppRoutes.page1,
    builder: (_, state) => const HomeContentPage(
      title: 'Page 1',
      content: Center(child: Text('Content for Page 1')),
    ),
  );

  static final page2Route = GoRoute(
    path: AppRoutes.page2,
    builder: (_, state) => const HomeContentPage(
      title: 'Page 2',
      content: Center(child: Text('Content for Page 2')),
    ),
  );

  static final homeShellRoute = ShellRoute(
    builder: (context, state, child) => HomeScreen(child: child),
    routes: [
      page1Route,
      page2Route,
      TabedRoutes.page3TabedRoute,
    ],
  );
}
