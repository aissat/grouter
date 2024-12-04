import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grouter/core/router/app_routes.dart';
import 'package:grouter/core/service_locator.dart';
import 'package:grouter/features/auth/services/auth_service.dart';

class AuthGuard {
  static String? guard(BuildContext context, GoRouterState state) {
    // Get auth service from service locator
    final authService = ServiceLocator.get<AuthService>();

    // If route requires authentication and user is not authenticated
    if (AppRoutes.authenticatedRoutes.contains(state.matchedLocation) &&
        !authService.isAuthenticated) {
      // Redirect to login
      return AppRoutes.login;
    }

    // No redirect needed
    return null;
  }
}
