import 'package:get_it/get_it.dart';
import 'package:grouter/features/auth/services/auth_service.dart';

class ServiceLocator {
  static final GetIt _getIt = GetIt.instance;

  static void setup() {
    // Register services
    _getIt.registerLazySingleton<AuthService>(() => AuthService());
  }

  // Helper method to get a service
  static T get<T extends Object>() {
    return _getIt.get<T>();
  }
}
