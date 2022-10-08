import 'package:flutter/material.dart';
import 'package:research_mobile_app/screens/camera_screen.dart';
import 'package:research_mobile_app/screens/home_screen.dart';

class ScreenRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const HomeScreen(),
          transitionDuration: const Duration(milliseconds: 300),
          settings: settings,
          transitionsBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
      // case "/camera":
      //   return PageRouteBuilder(
      //     pageBuilder: (_, __, ___) => CameraScreen(),
      //     transitionDuration: const Duration(milliseconds: 300),
      //     settings: settings,
      //     transitionsBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
      //       position: Tween<Offset>(
      //         begin: const Offset(1.0, 0.0),
      //         end: Offset.zero,
      //       ).animate(animation),
      //       child: child,
      //     ),
      //   );
      default:
        return null;
    }
  }
}
