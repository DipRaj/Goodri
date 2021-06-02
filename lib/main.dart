import 'package:flutter/material.dart';
import 'package:gudri/screens/login_screen/login_screen.dart';
import 'package:gudri/screens/my_notifications_screen/my_notification_screen.dart';
import 'package:gudri/screens/my_orders_screen/my_orders_screen.dart';
import 'package:gudri/screens/product_details_screen/product_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: custom,
          ),
      // initialRoute: MyOrdersScreen.id,
      // initialRoute: ProductDetailsScreen.id,
      // initialRoute: MyNotificationsScreen.id,
      initialRoute: LoginScreen.id,
      routes: {
        ProductDetailsScreen.id: (context) => ProductDetailsScreen(),
        MyOrdersScreen.id: (context) => MyOrdersScreen(),
        MyNotificationsScreen.id: (context) => MyNotificationsScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
