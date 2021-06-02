import 'package:flutter/material.dart';
import 'package:gudri/screens/my_notifications_screen/my_notification_screen_mobile.dart';
import 'package:gudri/screens/my_notifications_screen/my_notification_screen_tablet.dart';
import 'package:gudri/ui_config/screen_type_layout.dart';

class MyNotificationsScreen extends StatelessWidget {
  static const id = "my_notification_screen";
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MyNotificationsScreenMobile(),
      tablet: MyNotificationsScreenTablet(),
    );
  }
}
