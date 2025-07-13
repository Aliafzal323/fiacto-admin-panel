import 'package:dio_project/common/widgets/custom_drawer.dart';
import 'package:dio_project/common/widgets/layouts/headers/header.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 1, child: CustomDrawer()),
          Expanded(
            flex: 5,
            child: Column(
              children: [const CustomAppHeader(), body ?? Container()],
            ),
          ),
        ],
      ),
    );
  }
}
