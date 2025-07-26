import 'package:docdoc/core/app_routing/routs.dart';
import 'package:docdoc/features/onpording/onbording_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RoutGenerator {
  static Route<dynamic>? ongenerateroute(RouteSettings routesetting) {
    switch (routesetting.name) {
      case AppRouts.onbording:
        return MaterialPageRoute(
          builder: (_) {
            return OnbordingScreen();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(body: Center(child: Text("no bage")));
          },
        );
    }
  }
}
