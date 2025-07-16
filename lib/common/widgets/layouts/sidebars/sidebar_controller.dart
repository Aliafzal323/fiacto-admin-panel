// import 'package:dio_project/routes/routes.dart';
// import 'package:dio_project/utils/device/device_utility.dart';
// import 'package:get/get.dart';

// class SidebarController extends GetxController {
//   final activeItem = Routes.secondScreen.obs;
//   final hoverItem = ''.obs;

//   void changeActiveItem(String route) {
//     activeItem.value = route;
//   }

//   void changeHoverItem(String route) {
//     if (activeItem.value != route) hoverItem.value = route;
//   }

//   bool isActive(String route) => activeItem.value == route;

//   bool isHovering(String route) => hoverItem.value == route;

//   void menuOnTap(String route) {
//     if (!isActive(route)) {
//       changeActiveItem(route);

//       if (DeviceUtils.isMobileScreen(Get.context!)) Get.back();

//       Get.toNamed(route);
//     }
//   }
// }
