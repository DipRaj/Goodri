import 'package:flutter/material.dart';
import 'package:gudri/screens/about_us_screen/about_us_screen_mobile.dart';
import 'package:gudri/screens/about_us_screen/about_us_screen_tablet.dart';
import 'package:gudri/ui_config/screen_type_layout.dart';

class AboutUsScreen extends StatelessWidget {
  static const id = "about_us_screen";
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutUsScreenMobile(),
      tablet: AboutUsScreenTablet(),
    );
  }
}
