import 'package:flutter/material.dart';
import 'package:gudri/screens/home_screen/home_screen_mobile/home_screen_mobile_lanscape.dart';
import 'package:gudri/screens/home_screen/home_screen_mobile/home_screen_mobile_potrait.dart';
import 'package:gudri/ui_config/orientation_layout.dart';
import 'package:gudri/ui_config/screen_type_layout.dart';

class HomeScreen extends StatelessWidget {
  static const id = "home_screen";
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeScreenMobilePortrait(),
        landscape: HomeScreenMobileLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: HomeScreenMobilePortrait(),
        landscape: HomeScreenMobileLandscape(),
      ),
    );
  }
}
