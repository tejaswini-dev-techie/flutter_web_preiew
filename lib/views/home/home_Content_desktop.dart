import 'package:flutter/material.dart';
import 'package:flutter_web_preview/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_web_preview/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Join Now'),
          ),
        )
      ],
    );
  }
}
