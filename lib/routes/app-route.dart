import 'package:dio_project/dio.dart';
import 'package:dio_project/routes/middlewares.dart';
import 'package:dio_project/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.firstScreen,
      page: () => FirstScreen(),
      middlewares: [RouteMiddleWares()],
    ),
    GetPage(
      name: Routes.secondScreen,
      page: () => SecondScreen(),
      middlewares: [RouteMiddleWares()],
    ),
    GetPage(
      name: Routes.secondScreenWithUid,
      page: () => SecondScreen(),
      middlewares: [RouteMiddleWares()],
    ),
  ];
}
