/// AppRoutes contains all the route paths used in the application
/// This makes it easier to maintain and update routes in one place
class AppRoutes {
  // Private constructor to prevent instantiation
  AppRoutes._();

  // Home section routes
  static const String page1 = '/page1';
  static const String page2 = '/page2';
  static const String page3 = '/page3';

  // Feature section routes
  static const String search = '/search';
  static const String profile = '/profile';

  // Initial route
  static const String initial = page1;

  // Route names (useful for named routes if needed)
  static const String homeName = 'home';
  static const String searchName = 'search';
  static const String profileName = 'profile';

  // Add to app_routes.dart
  static const String login = '/login';

  // Route groups (useful for route guards or middleware)
  static const List<String> authenticatedRoutes = [
    profile,
  ];

  static const List<String> homeRoutes = [
    page1,
    page2,
    page3,
  ];
}
