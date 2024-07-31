import 'package:flutter/material.dart';
import 'package:flutter_web_preview/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:flutter_web_preview/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints:
          const ScreenBreakpoints(tablet: 600, desktop: 950, watch: 300),
      mobile: (BuildContext context) => CallToActionMobile(title),
      tablet: (BuildContext context) => CallToActionTabletDesktop(title),
    );
  }
}
