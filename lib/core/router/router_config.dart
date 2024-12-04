import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grouter/core/router/guards/auth_guard.dart';
import 'package:grouter/features/home/home_screen.dart';
import 'package:grouter/features/home/view/pages/home_content_page.dart';
import 'package:grouter/features/profile/view/pages/profile_page.dart';
import 'package:grouter/shell/app_shell.dart';
import 'package:grouter/features/search/view/pages/search_page.dart';
import 'package:grouter/core/router/app_routes.dart';
import 'package:grouter/features/auth/view/pages/login_page.dart';

class AppRouterConfig {
  static final router = GoRouter(
    initialLocation: AppRoutes.initial,
    redirect: AuthGuard.guard,
    routes: [
      // Login route
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginPage(),
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => AppShell(shell: shell),
        branches: [
          StatefulShellBranch(
            routes: [
              ShellRoute(
                builder: (context, state, child) => HomeScreen(child: child),
                routes: [
                  GoRoute(
                    path: AppRoutes.page1,
                    builder: (_, state) => const HomeContentPage(
                      title: 'Page 1',
                      content: Center(child: Text('Content for Page 1')),
                    ),
                  ),
                  GoRoute(
                    path: AppRoutes.page2,
                    builder: (_, state) => const HomeContentPage(
                      title: 'Page 2',
                      content: Center(child: Text('Content for Page 2')),
                    ),
                  ),
                  GoRoute(
                    path: AppRoutes.page3,
                    builder: (_, state) => const HomeContentPage(
                      title: 'Page 3',
                      content: Center(child: Text('Content for Page 3')),
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.search,
                builder: (_, state) => const SearchPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutes.profile,
                builder: (_, state) => const ProfilePage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
