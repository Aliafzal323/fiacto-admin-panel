import 'package:dio_project/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class RouteMiddleWares extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    print('THI rediretion function called');
    final isAuthenticated = true;

    return isAuthenticated
        ? null
        : const RouteSettings(name: Routes.firstScreen);
  }
}
