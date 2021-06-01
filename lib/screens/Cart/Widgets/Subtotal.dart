import 'package:flutter/material.dart';

class Subtotal extends StatefulWidget {
  @override
  _SubtotalState createState() => _SubtotalState();
}

class _SubtotalState extends State<Subtotal> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Column(
          children: [
            SubtotalItem(
              title: "M.R.P",
              amount: "₹1,450",
              theColor: Colors.grey,
            ),
            SubtotalItem(
              title: "Products Discount",
              amount: "-₹497",
              theColor: Color(0xff9DB983),
            ),
            SubtotalItem(
              title: "Delivery Charges",
              amount: "₹49",
              theColor: Colors.grey,
            ),
            Divider(
              color: Colors.grey,
            ),
            SubtotalItem(
              title: "Sub total",
              amount: "₹494",
              theColor: Colors.black,
              textColor: Colors.black,
              numberFontSize: 15,
              textfontSize: 15,
              thefontWeight: FontWeight.w900,
            )
          ],
        ),
      ),
    );
  }
}

class SubtotalItem extends StatelessWidget {
  final String title;
  final String amount;
  final Color theColor;
  final double textfontSize;
  final Color textColor;
  final double numberFontSize;
  final FontWeight thefontWeight;
  SubtotalItem(
      {required this.title,
      required this.amount,
      required this.theColor,
      this.textfontSize = 13,
      this.textColor = Colors.grey,
      this.numberFontSize = 13,
      this.thefontWeight = FontWeight.w800});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: textfontSize,
                fontWeight: thefontWeight,
                color: textColor,
                fontFamily: "Cabin"),
          ),
          Text(
            amount,
            style: TextStyle(
                fontSize: numberFontSize,
                fontWeight: thefontWeight,
                color: theColor,
                fontFamily: "Cabin"),
          )
        ],
      ),
    );
  }
}
