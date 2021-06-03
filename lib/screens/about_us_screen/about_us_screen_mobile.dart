import 'package:flutter/material.dart';

class AboutUsScreenMobile extends StatefulWidget {
  const AboutUsScreenMobile({Key? key}) : super(key: key);

  @override
  _AboutUsScreenMobileState createState() => _AboutUsScreenMobileState();
}

class _AboutUsScreenMobileState extends State<AboutUsScreenMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Color(0xff00008b),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Container(
        height: size.height,
        // color: Colors.blue,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20.0,
              ),
              child: buildAboutUsDescContainer(size),
            ),
            Positioned(
              bottom: 0,
              child: Material(
                elevation: 10,
                child: Container(
                  width: size.width,
                  // color: Colors.red,
                  child: Column(
                    children: [
                      buildBottomListTile("Privacy Policy"),
                      Divider(),
                      buildBottomListTile("Terms & Conditions"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildBottomListTile(String title) {
    return ListTile(
      leading: Text(
        title,
      ),
      trailing: Icon(
        Icons.chevron_right,
      ),
    );
  }

  Container buildAboutUsDescContainer(Size size) {
    return Container(
      // color: Colors.red,
      width: size.width,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Us v6.8.0",
          ),
          Text(
            "Hello, I am a new version of Gudri",
          ),
        ],
      ),
    );
  }
}
