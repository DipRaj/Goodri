import 'package:flutter/material.dart';
import 'package:gudri/screens/about_this_release_screen/about_this_release_screen_mobile.dart';
import 'package:gudri/screens/about_this_release_screen/about_this_release_screen_tablet.dart';
import 'package:gudri/ui_config/screen_type_layout.dart';

class AboutThisReleaseScreen extends StatelessWidget {
  const AboutThisReleaseScreen({Key? key}) : super(key: key);
  static const id = "about_this_release";
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutThisReleaseScreenMobile(),
      tablet: AboutThisReleaseScreenTablet(),
    );
  }
}
