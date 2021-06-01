import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gudri/screens/home_screen/localWidgets/LocalWidgets.dart';

class AppAndDrawer extends StatefulWidget {
  static const String id = 'AppAndDrawer';

  @override
  _AppAndDrawerState createState() => _AppAndDrawerState();
}

class _AppAndDrawerState extends State<AppAndDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // For the locaiton.
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Location",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Duhabi-ward no. 5",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
            // For the cart
            Icon(
              FontAwesomeIcons.shoppingCart,
              size: 20,
            )
          ],
        )),
        backgroundColor: Color(0xff00008b),
      ),
      body: HomeScreen(),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromRGBO(255, 254, 138, 0.8)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage("assets/images/logo.png"),
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Goodri",
                        style: TextStyle(fontSize: 30, color: Colors.blue),
                      ),
                      Text("The Local Online Store")
                    ],
                  )
                ],
              ),
            ),
            ListTile(leading: Text("image"), title: Text("Namaskar")),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Ward-5 Duhabi'),
              trailing: Icon(Icons.edit),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Login'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Mero Orders'),
              trailing: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.red),
                child: Center(
                    child: Text("1", style: TextStyle(color: Colors.white))),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.shoppingCart),
              title: Text('Mero Cart'),
              trailing: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.red),
                child: Center(
                    child: Text("1", style: TextStyle(color: Colors.white))),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Mero Notifications'),
              trailing: Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.red),
                child: Center(
                    child: Text("1", style: TextStyle(color: Colors.white))),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

            //  Others division.
            ListTile(
              title: Text('Others'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Customer Helpline'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Rate us'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('About Us'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('About this release'),
              trailing: Text("V.1.0", style: TextStyle(color: Colors.grey)),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SearchBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Row(
                      children: [
                        Icon(Icons.lock_clock),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("We are accepting orders now!",
                                style: TextStyle(fontWeight: FontWeight.w500)),
                            Text("Earliest delivery by tomorrow 9 AM",
                                style: TextStyle(fontWeight: FontWeight.w500))
                          ],
                        )
                      ],
                    ),
                  ),

                  // for best savers 👇👇
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SectionTitle(
                          title: "Best Savers",
                        ),
                        SectionEndTitle(endTitle: "See All")
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [Product(), Product(), Product(), Product()],
                    ),
                  ),

                  //for category title 👇👇👇
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SectionTitle(
                          title: "Shop by Category",
                        ),
                      ],
                    ),
                  ),

                  // Category Card 👇👇
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                      width: 600,
                      height: 250,
                      child: CategoryCard())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff00008b)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 34,
                  child: Center(child: Text("Categories")),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 34,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.search,
                        color: Color(0xffEDEDED),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Search for Products",
                        style: TextStyle(
                            color: Color(0xff777777), letterSpacing: 1),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
