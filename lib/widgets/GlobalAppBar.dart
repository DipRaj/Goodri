import 'package:flutter/material.dart';

class GlobalAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
  GlobalAppBar({required this.title, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                fontSize: 17,
                fontFamily: "Cabin",
              )),
          Icon(
            icon,
            size: 20,
          )
        ],
      ),
    );
  }
}
