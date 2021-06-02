import 'package:flutter/material.dart';

class LoginScreenMobile extends StatefulWidget {
  @override
  _LoginScreenMobileState createState() => _LoginScreenMobileState();
}

class _LoginScreenMobileState extends State<LoginScreenMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00008b),
        title: Text("Login"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        child: Column(
          children: [
            buildLoginPanel(size),
            Container(
              width: size.width,
              // color: Colors.red,
              child: Row(
                children: [
                  buildLinearSizedBox(size),
                  Container(
                    height: 40,
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        "o",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  buildLinearSizedBox(size),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              height: 35,
              width: size.width,
              color: Color(0xff0077CC),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.phone,
                    ),
                  ),
                  Text(
                    "One touch login with Truecaller",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox buildLinearSizedBox(Size size) {
    return SizedBox(
      child: Container(
        width: 0.44 * size.width,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Material buildLoginPanel(Size size) {
    return Material(
      elevation: 10,
      child: Container(
        height: size.height * 0.23,
        width: size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: "We will send and SMS with a\n"),
                    TextSpan(text: "confirmation code to this number "),
                  ]),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.1,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "+977",
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 35,
              color: Color(0xffF06833),
              child: Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
