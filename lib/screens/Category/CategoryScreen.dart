import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gudri/screens/Category/widgets/LocalWidgets.dart';
import 'package:gudri/widgets/GlobalAppBar.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      appBar: AppBar(
        backgroundColor: Color(0xff1C2124),
        title: GlobalAppBar(
            title: "All Categories", icon: FontAwesomeIcons.shoppingCart),
      ),
      body: CategoryCard2Section(),
    );
  }
}
