import 'package:dio_project/common/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mobile View")),
      drawer: CustomDrawer(), // your own drawer
      body: body ?? Container(),
    );
  }
}
