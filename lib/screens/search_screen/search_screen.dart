import 'package:flutter/material.dart';
import 'package:gudri/screens/search_screen/search_screen_mobile.dart';
import 'package:gudri/screens/search_screen/search_screen_tablet.dart';
import 'package:gudri/ui_config/screen_type_layout.dart';

class SearchScreen extends StatelessWidget {
  static const id = "search_screen";
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: SearchScreenMobile(),
      tablet: SearchScreenTablet(),
    );
  }
}
