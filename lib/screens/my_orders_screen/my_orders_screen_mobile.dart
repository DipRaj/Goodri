import 'package:flutter/material.dart';
import 'package:gudri/constants/constants.dart';
import 'package:gudri/widgets/tab_widget.dart';
// import 'package:gudri/data/data.dart';

class MyOrdersScreenMobile extends StatefulWidget {
  @override
  _MyOrdersScreenMobileState createState() => _MyOrdersScreenMobileState();
}

class _MyOrdersScreenMobileState extends State<MyOrdersScreenMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(),
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            child: ListView.separated(
                itemCount: 2,
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    thickness: 10.0,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return buildOrderDetailContainer();
                }),
          ),
        ),
      ),
    );
  }

  Container buildOrderDetailContainer() {
    return Container(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 8.0,
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order no: #23343454554",
                        ),
                        Text(
                          "Placed on 11 Sep 2019",
                          style: kSubtitleTextStyle,
                        ),
                        Text(
                          "Paid on 17 Sep 2019",
                          style: kSubtitleTextStyle,
                        ),
                      ],
                    ),
                    Text(
                      "Paid",
                      style: kProductBoughtQuantityTextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: buildOrderedProductDetailsContainer(),
          ),
        ],
      ),
    );
  }

  Container buildOrderedProductDetailsContainer() {
    return Container(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Image(
                    height: 100,
                    image: AssetImage("images/fortune_soya_oil.jpg"),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // color: Colors.red,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fortune Soya Oil",
                                style: kProductTitleTextStyle,
                              ),
                              Text(
                                "Rs 200",
                                style: kProductPriceTextStyle,
                              ),
                              Text(
                                "x 1",
                                style: kProductBoughtQuantityTextStyle,
                              ),
                            ],
                          ),
                        ),
                        buildDeliveredIconContainer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Container buildDeliveredIconContainer() {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      height: 25.0,
      width: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xffF57224),
      ),
      child: Center(
        child: Text(
          "Delivered",
          style: TextStyle(
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Color(0xff00008b),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      title: Text("My Order"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
      ],
      bottom: TabBar(
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
        tabs: [
          TabWidget(
            title: 'All',
          ),
          TabWidget(
            title: "To Pay",
          ),
          TabWidget(
            title: "To Ship",
          ),
          TabWidget(
            title: "To Receive",
          ),
        ],
      ),
    );
  }
}
