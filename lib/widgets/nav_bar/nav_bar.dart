import 'package:flutter/material.dart';
import 'package:flutter_web_preview/widgets/nav_bar/nav_bar_mobile.dart';
import 'package:flutter_web_preview/widgets/nav_bar/nav_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints:
          const ScreenBreakpoints(tablet: 600, desktop: 950, watch: 300),
      mobile:(BuildContext context) => const NavigationBarMobile(),
      tablet:(BuildContext context) => const NavigationBarTabletDesktop(),
    );
  }
}
