import 'package:flutter/material.dart';
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
        appBar: AppBar(
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
              Tab(
                icon: Row(
                  children: [
                    Text("All"),
                  ],
                ),
              ),
              Tab(
                icon: Row(
                  children: [
                    Text("To Pay"),
                  ],
                ),
              ),
              Tab(
                icon: Row(
                  children: [
                    Text("To Ship"),
                  ],
                ),
              ),
              Tab(
                icon: Row(
                  children: [
                    Text("To Receive"),
                  ],
                ),
              ),
            ],
          ),
        ),
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
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Order no: #23343454554",
                                  ),
                                  Text(
                                    "Placed on 11 Sep 2019",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    "Paid on 17 Sep 2019",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            child: ListView.builder(
                              itemCount: 3,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Image(
                                          height: 100,
                                          image: AssetImage(
                                              "images/fortune_soya_oil.jpg"),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0, vertical: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                // color: Colors.red,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Fortune Soya Oil",
                                                      style: TextStyle(
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Rs 200",
                                                      style: TextStyle(
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      "x 1",
                                                      style: TextStyle(
                                                        fontSize: 10.0,
                                                        color: Colors.grey,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(top: 40.0),
                                                height: 25.0,
                                                width: 60.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
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
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
