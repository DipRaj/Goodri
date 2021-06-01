import 'package:flutter/material.dart';
import 'package:gudri/screens/product_details_screen/product_details_screen_mobile.dart';
import 'package:gudri/screens/product_details_screen/product_details_screen_tablet.dart';
import 'package:gudri/ui_config/screen_type_layout.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const id = "product_details";
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ProductDetailsScreenMobile(),
      tablet: ProductDetailsScreenTablet(),
    );
  }
}
