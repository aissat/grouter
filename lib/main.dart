import 'package:flutter/material.dart';
import 'package:grouter/core/router/router_config.dart';
import 'package:grouter/core/service_locator.dart';

void main() {
  // Setup service locator before running the app
  ServiceLocator.setup();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My Smart App',
      routerConfig: AppRouterConfig.router,
    );
  }
}
