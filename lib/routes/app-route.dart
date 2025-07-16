import 'package:dio_project/features/Login/view/login_page.dart';
import 'package:dio_project/routes/middlewares.dart';
import 'package:dio_project/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      middlewares: [RouteMiddleWares()],
    ),
    // GetPage(
    //   name: Routes.secondScreen,
    //   page: () => SecondScreen(),
    //   middlewares: [RouteMiddleWares()],
    // ),
    // GetPage(
    //   name: Routes.secondScreenWithUid,
    //   page: () => SecondScreen(),
    //   middlewares: [RouteMiddleWares()],
    // ),
  ];
}
