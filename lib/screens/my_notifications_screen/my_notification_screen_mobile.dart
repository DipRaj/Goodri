import 'package:flutter/material.dart';
import 'package:gudri/data/data.dart';

class MyNotificationsScreenMobile extends StatefulWidget {
  @override
  _MyNotificationsScreenMobileState createState() =>
      _MyNotificationsScreenMobileState();
}

class _MyNotificationsScreenMobileState
    extends State<MyNotificationsScreenMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00008b),
        title: Text("My Notifications"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: ListView.separated(
              itemCount: notificationList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  height: size.height * 0.2,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notificationList[0].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(notificationList[0].description),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          notificationList[0].timePeriod + "hours ago",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              }),
        ),
      ),
    );
  }
}
