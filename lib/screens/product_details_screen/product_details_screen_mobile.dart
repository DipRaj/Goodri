import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gudri/data/data.dart';

class ProductDetailsScreenMobile extends StatefulWidget {
  // final Products products;

  // const ProductDetailsScreenMobile({Key? key, required this.products})
  //     : super(key: key);
  @override
  _ProductDetailsScreenMobileState createState() =>
      _ProductDetailsScreenMobileState();
}

class _ProductDetailsScreenMobileState
    extends State<ProductDetailsScreenMobile> {
  List<String> imageList = [
    'images/fortune_soya_oil.jpg',
  ];
  bool descContainerVisibility = false;
  bool categoryContainerVisibility = false;
  bool sellerContainerVisibility = false;
  IconData descContainerIcon = Icons.arrow_drop_down;
  IconData categoryContainerIcon = Icons.arrow_drop_down;
  IconData sellerContainerIcon = Icons.arrow_drop_down;
  Color color = Colors.grey;

  onDescPressed() {
    if (descContainerVisibility == true) {
      setState(() {
        descContainerVisibility = false;
        descContainerIcon = Icons.arrow_drop_down;
      });
    } else {
      setState(() {
        descContainerVisibility = true;
        descContainerIcon = Icons.arrow_drop_up;
      });
    }
  }

  onCategoryPressed() {
    if (categoryContainerVisibility == true) {
      setState(() {
        categoryContainerVisibility = false;
        categoryContainerIcon = Icons.arrow_drop_down;
      });
    } else {
      setState(() {
        categoryContainerVisibility = true;
        categoryContainerIcon = Icons.arrow_drop_up;
      });
    }
  }

  onSellerPressed() {
    if (sellerContainerVisibility == true) {
      setState(() {
        sellerContainerVisibility = false;
        sellerContainerIcon = Icons.arrow_drop_down;
      });
    } else {
      setState(() {
        sellerContainerVisibility = true;
        sellerContainerIcon = Icons.arrow_drop_up;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: size.height * 0.4,
                width: size.width,
                child: CarouselSlider(
                    items: imageList.map((imgUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Image.asset(
                            imgUrl,
                            fit: BoxFit.contain,
                          );
                        },
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 200.0,
                    )),
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: size.height * 0.2,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(productList[0].productTitle.toString()),
                    RichText(
                      text: TextSpan(
                        text: "Price: ",
                        children: [
                          TextSpan(
                            text:
                                "Rs " + productList[0].sellingPrice.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("(Inclusive of all taxes)"),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                height: 25,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  color: Color(0xffE36325),
                                ),
                                child: Center(
                                  child: Text(
                                    "Add",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                height: 25,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2.0),
                                  color: Color(0xffC04E19),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
              //Available Units
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Unit"),
                    Row(
                      children: [
                        buildUnitBox(productList[0].unit![0].toString()),
                        buildUnitBox("500"),
                        buildUnitBox("750"),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(
                  thickness: 10,
                ),
              ),
              buildTabBar(),
              buildTabBarView(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff00008b),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }

  Container buildTabBarView() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 300,
      child: TabBarView(
        children: [
          ListView(
            children: [
              buildProductHiglightTile("Description", descContainerVisibility,
                  onDescPressed, descContainerIcon),
              buildProductHiglightTile("Category", categoryContainerVisibility,
                  onCategoryPressed, categoryContainerIcon),
            ],
          ),
          ListView(
            children: [
              buildProductHiglightTile("Seller", sellerContainerVisibility,
                  onSellerPressed, sellerContainerIcon),
            ],
          )
        ],
      ),
    );
  }

  Column buildProductHiglightTile(
      String title, bool containerVisibility, onPressed, IconData icon) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            onTap: () {
              onPressed();
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title),
                  Icon(
                    icon,
                  ),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: containerVisibility,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              child: Text(
                productList[0].description.toString(),
              ),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }

  Container buildTabBar() {
    return Container(
      child: TabBar(
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        tabs: [
          Tab(
            icon: Text(
              "Highlights",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Tab(
            icon: Text(
              "Info",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildUnitBox(String unit) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, right: 30.0),
      height: 30.0,
      width: 60.0,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Color(0xffEFB98A),
        ),
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Center(
        child: Text(unit + " ml"),
      ),
    );
  }
}
