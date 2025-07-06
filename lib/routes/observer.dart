import 'package:dio_project/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/observers/route_observer.dart';

class RoutesObserver extends GetObserver {
  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final controller = Get.put(SidebarController());

    if (previousRoute != null) {
      for (var routeName in Routes.sideMenuItems) {
        if (previousRoute.settings.name == routeName) {
          controller.activeItem.value = routeName;
        }
      }
    }
  }

  @override
  void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final controller = Get.put(SidebarController());

    if (route != null) {
      for (var routeName in Routes.sideMenuItems) {
        if (route.settings.name == routeName) {
          controller.activeItem.value = routeName;
        }
      }
    }
  }
}
