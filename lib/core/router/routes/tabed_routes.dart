import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grouter/features/home/view/pages/home_content_page.dart';
import 'package:grouter/features/home/view/pages/tabed_page.dart';

class TabedRoutes {
  static final page3TabedRoute = StatefulShellRoute.indexedStack(
    key: GlobalKey(debugLabel: 'page3'),
    builder: (context, state, shell) {
      return TabedPage(shell: shell, title: 'Page 3');
    },
    branches: [
      carBranch,
      transitBranch,
      bikeBranch,
    ],
  );

  static final carBranch = StatefulShellBranch(
    initialLocation: '/page3/car',
    routes: [
      GoRoute(
        path: '/page3/car',
        builder: (_, state) => const HomeContentPage(
          title: 'Car',
          content: Center(child: Text('Car Content')),
        ),
      ),
    ],
  );

  static final transitBranch = StatefulShellBranch(
    initialLocation: '/page3/transit',
    routes: [
      GoRoute(
        path: '/page3/transit',
        builder: (_, state) => const HomeContentPage(
          title: 'Transit',
          content: Center(child: Text('Transit Content')),
        ),
      ),
    ],
  );

  static final bikeBranch = StatefulShellBranch(
    initialLocation: '/page3/bike',
    routes: [
      GoRoute(
        path: '/page3/bike',
        builder: (_, state) => const HomeContentPage(
          title: 'Bike',
          content: Center(child: Text('Bike Content')),
        ),
      ),
    ],
  );
}
