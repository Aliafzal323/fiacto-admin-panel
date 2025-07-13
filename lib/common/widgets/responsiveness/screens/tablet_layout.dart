import 'package:dio_project/common/widgets/layouts/headers/header.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppHeader(), body: body ?? Container());
  }
}
