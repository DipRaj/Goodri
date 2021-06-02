import 'package:flutter/material.dart';
import 'package:gudri/screens/Cart/Widgets/CartProduct.dart';
import 'package:gudri/screens/Cart/Widgets/Subtotal.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final snackBar = SnackBar(
    content: Text('Yay! A SnackBar!'),
    elevation: 5,
    // duration: ,
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECECEC),
      appBar: AppBar(
        backgroundColor: Color(0xff1C2124),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("My Cart",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Cabin",
                      )),
                  Text("5 items",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Cabin",
                      ))
                ],
              ),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Icon(
                  Icons.search,
                  size: 26,
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Column(
            children: [
              Subtotal(),
              Container(
                child: CartProduct(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
