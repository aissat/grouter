import 'package:go_router/go_router.dart';
import 'package:grouter/core/router/app_routes.dart';
import 'package:grouter/core/router/routes/home_routes.dart';
import 'package:grouter/features/profile/view/pages/profile_page.dart';
import 'package:grouter/features/search/view/pages/search_page.dart';

class FeatureRoutes {
  static final homeBranch = StatefulShellBranch(
    routes: [HomeRoutes.homeShellRoute],
  );

  static final searchBranch = StatefulShellBranch(
    routes: [
      GoRoute(
        path: AppRoutes.search,
        builder: (_, state) => const SearchPage(),
      ),
    ],
  );

  static final profileBranch = StatefulShellBranch(
    routes: [
      GoRoute(
        path: AppRoutes.profile,
        builder: (_, state) => const ProfilePage(),
      ),
    ],
  );
}
