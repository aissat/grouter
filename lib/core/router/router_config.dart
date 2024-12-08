import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grouter/core/router/app_routes.dart';
import 'package:grouter/core/router/guards/auth_guard.dart';
import 'package:grouter/core/router/routes/auth_routes.dart';
import 'package:grouter/core/router/routes/feature_routes.dart';
import 'package:grouter/shell/app_shell.dart';

class AppRouterConfig {
  static final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: AppRoutes.initial,
    redirect: AuthGuard.guard,
    routes: [
      AuthRoutes.loginRoute,
      _rootShellRoute,
    ],
  );

  static final _rootShellRoute = StatefulShellRoute.indexedStack(
    key: GlobalKey(debugLabel: 'root'),
    builder: (context, state, shell) => AppShell(shell: shell),
    branches: [
      FeatureRoutes.homeBranch,
      FeatureRoutes.searchBranch,
      FeatureRoutes.profileBranch,
    ],
  );
}
