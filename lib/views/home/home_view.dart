import 'package:flutter/material.dart';
import 'package:flutter_web_preview/views/home/home_Content_desktop.dart';
import 'package:flutter_web_preview/views/home/home_content_mobile.dart';
import 'package:flutter_web_preview/widgets/centered_view/centered_view.dart';
import 'package:flutter_web_preview/widgets/nav_bar/nav_bar.dart';
import 'package:flutter_web_preview/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        backgroundColor: Colors.white,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawers()
            : null,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              const NavBar(),
              Expanded(
                child: ScreenTypeLayout.builder(
                  breakpoints: const ScreenBreakpoints(
                      tablet: 600, desktop: 950, watch: 300),
                  mobile: (BuildContext context) => const HomeContentMobile(),
                  desktop: (BuildContext context) => const HomeContentDesktop(),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
