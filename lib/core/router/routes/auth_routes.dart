import 'package:go_router/go_router.dart';
import 'package:grouter/core/router/app_routes.dart';
import 'package:grouter/features/auth/view/pages/login_page.dart';

class AuthRoutes {
  static final loginRoute = GoRoute(
    path: AppRoutes.login,
    builder: (context, state) => const LoginPage(),
  );
}
