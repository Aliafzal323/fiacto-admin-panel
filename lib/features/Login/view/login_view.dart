import 'package:dio_project/features/Dashboard/view/dashboard.dart';
import 'package:dio_project/features/Login/view/responsive_design/login_mobile.dart';
import 'package:dio_project/features/Login/view/responsive_design/login_tablet_desktop.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const DasboardTemplate(
      useLayout: false,
      mobile: LoginMobile(),
      desktop: LoginTabletDesktop(),
    );
  }
}
