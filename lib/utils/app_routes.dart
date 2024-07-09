import 'package:day_task_app/views/login_screen.dart';
import 'package:day_task_app/views/register_screen.dart';
import 'package:day_task_app/views/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case registerRoute:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case AppRoutes.splashRoute:
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
    }
  }
}
