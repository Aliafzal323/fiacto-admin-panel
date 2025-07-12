import 'package:dio_project/dio.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});

  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(flex: 1, child: Drawer()),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                CustomColorContainer(
                  width: double.infinity,
                  height: 70,
                  title: Text('Box1'),
                ),
                body ?? Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
