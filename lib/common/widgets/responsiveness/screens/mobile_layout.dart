import 'package:dio_project/common/widgets/layouts/headers/header.dart';
import 'package:dio_project/common/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: CustomAppHeader(),
      body: body ?? Container(),
    );
  }
}
