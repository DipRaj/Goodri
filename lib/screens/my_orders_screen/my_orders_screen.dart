import 'package:flutter/material.dart';
import 'package:gudri/screens/my_orders_screen/my_orders_screen_mobile.dart';
import 'package:gudri/screens/my_orders_screen/my_orders_screen_tablet.dart';
import 'package:gudri/ui_config/screen_type_layout.dart';

class MyOrdersScreen extends StatelessWidget {
  static const id = "my_orders_screen";
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MyOrdersScreenMobile(),
      tablet: MyOrdersScreenTablet(),
    );
  }
}
