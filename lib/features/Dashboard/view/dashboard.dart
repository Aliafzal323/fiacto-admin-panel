import 'package:dio_project/common/widgets/responsiveness/responsive_design.dart';
import 'package:dio_project/common/widgets/responsiveness/screens/desktop_layout.dart';
import 'package:dio_project/common/widgets/responsiveness/screens/mobile_layout.dart';
import 'package:dio_project/common/widgets/responsiveness/screens/tablet_layout.dart';
import 'package:flutter/material.dart';

class DasboardTemplate extends StatelessWidget {
  const DasboardTemplate({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
    this.useLayout = true,
  });

  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  final bool useLayout;

  @override
  Widget build(BuildContext context) {
    return ResponsiveDesign(
      mobile:
          useLayout
              ? MobileLayout(body: mobile ?? desktop)
              : mobile ?? desktop ?? Container(),
      tablet:
          useLayout
              ? TabletLayout(body: tablet ?? desktop)
              : tablet ?? desktop ?? Container(),
      desktop:
          useLayout ? DesktopLayout(body: desktop) : desktop ?? Container(),
    );
  }
}
