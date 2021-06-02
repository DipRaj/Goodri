import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gudri/models/ProductModel.dart';
import 'package:gudri/models/SubCategoryModel.dart';
import 'package:gudri/screens/Category/widgets/LocalWidgets.dart';
import 'package:gudri/widgets/GlobalAppBar.dart';

class ParticularCategoryScreen extends StatefulWidget {
  final List<SubCategoryModel> theSubCategories;
  // final List<ProductModel> theProducts;
  ParticularCategoryScreen({required this.theSubCategories});
  @override
  _ParticularCategoryScreenState createState() =>
      _ParticularCategoryScreenState();
}

class _ParticularCategoryScreenState extends State<ParticularCategoryScreen> {
  // void

  // tabsContent() {
  //   List<Widget> tabBarView = [];
  //   for (var i = 0; i <widget.theSubCategories.length; i++) {
  //     tabBarView.add(
  //         CategoryParticularProduct(theProducts: widget.theSubCategories.products));
  //   }
  //   return tabBarView;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1A2224),
        title: GlobalAppBar(
            title: "Special offers on grocery",
            icon: FontAwesomeIcons.shoppingCart),
      ),
      body: DefaultTabController(
          length: 4,
          child: Column(
            children: <Widget>[
              Container(
                height: 65,
                child: Material(
                  color: Colors.white,
                  child: TabBar(
                      labelColor: Colors.black,
                      indicatorWeight: 8,
                      // indicator: BoxDecoration(
                      //     color: Color(0xffE06026),
                      //     borderRadius: BorderRadius.only(
                      //         topLeft: Radius.circular(2),
                      //         topRight: Radius.circular(2))),
                      indicatorColor: Color(0xffE06026),
                      // indicatorPadding: EdgeInsets.only(top: 50),
                      isScrollable: true,
                      unselectedLabelStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Cabin",
                          letterSpacing: 0.5,
                          color: Colors.black),
                      labelStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Cabin",
                          letterSpacing: 0.5,
                          color: Colors.black),
                      tabs: theTabs(widget.theSubCategories)),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF1F1F2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TabBarView(
                    children: theTabsContent(widget.theSubCategories),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  // generating tabs 👇👇
  theTabs(List<SubCategoryModel> subCategoriesTabs) {
    return subCategoriesTabs.map((item) => new Tab(text: item.title)).toList();
  }

  theTabsContent(List<SubCategoryModel> subCategoriesTabs) {
    return subCategoriesTabs
        .map(
            (item) => new CategoryParticularProduct(theProducts: item.products))
        .toList();
  }

  // generating tabs content

}
