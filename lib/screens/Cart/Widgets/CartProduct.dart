import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gudri/models/CartProductModel.dart';

final List<CartProductModel> cartsProducts = [
  CartProductModel(
      amount: "1 L",
      image: "assets/images/logo.png",
      name: "Soyabean with makhan",
      price: "455",
      quantity: 1),
  CartProductModel(
      amount: "1 L",
      image: "assets/images/logo.png",
      name: "Soyabean with makhan",
      price: "455",
      quantity: 1),
  CartProductModel(
      amount: "1 L",
      image: "assets/images/logo.png",
      name: "Soyabean with makhan",
      price: "455",
      quantity: 1),
  CartProductModel(
      amount: "1 L",
      image: "assets/images/logo.png",
      name: "Soyabean with makhan",
      price: "455",
      quantity: 1),
  CartProductModel(
      amount: "1 L",
      image: "assets/images/logo.png",
      name: "Soyabean with makhan",
      price: "455",
      quantity: 1),
  CartProductModel(
      amount: "1 L",
      image: "assets/images/logo.png",
      name: "Soyabean with makhan",
      price: "455",
      quantity: 1),
];

class CartProduct extends StatefulWidget {
  @override
  _CartProductState createState() => _CartProductState();
}

class _CartProductState extends State<CartProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: cartsProducts.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 0),
                  decoration: BoxDecoration(color: Colors.white),
                  height: 150,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image(
                          image: AssetImage('${cartsProducts[index].image}'),
                          height: 100,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '₹' + '${cartsProducts[index].price}',
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "Cabin",
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              '${cartsProducts[index].name}',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: "Cabin",
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffA9A9A9)),
                            ),
                            SizedBox(
                              height: 45,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${cartsProducts[index].amount}',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontFamily: "Cabin",
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffA9A9A9)),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      quantityChangeButton(icon: Icons.add),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: Text(
                                            '${cartsProducts[index].quantity}'
                                                .toString()),
                                      ),
                                      quantityChangeButton(
                                          icon: FontAwesomeIcons.minus)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                )
              ],
            );
          },
        ));
  }

  Container quantityChangeButton({required IconData icon}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE96125)),
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(
          icon,
          color: Color(0xffE96125),
          size: 15,
        ),
      ),
    );
  }
}
