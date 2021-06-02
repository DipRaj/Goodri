import 'package:flutter/material.dart';
import 'package:gudri/screens/login_screen/login_screen_mobile.dart';
import 'package:gudri/screens/login_screen/login_screen_tablet.dart';
import 'package:gudri/ui_config/screen_type_layout.dart';

class LoginScreen extends StatelessWidget {
  static const id = "login_screen";
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LoginScreenMobile(),
      tablet: LoginScreenTablet(),
    );
  }
}
