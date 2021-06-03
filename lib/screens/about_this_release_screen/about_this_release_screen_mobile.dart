import 'package:flutter/material.dart';

class AboutThisReleaseScreenMobile extends StatefulWidget {
  const AboutThisReleaseScreenMobile({Key? key}) : super(key: key);

  @override
  _AboutThisReleaseScreenMobileState createState() =>
      _AboutThisReleaseScreenMobileState();
}

class _AboutThisReleaseScreenMobileState
    extends State<AboutThisReleaseScreenMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00008b),
        title: Text(
          "About This Release v6.8.0",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Container(
                  width: size.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.circle_rounded,
                          size: 8,
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Text(
                            "Now find all the available Bank Offers on the Payments Page. No need to worry about missing top offers on your bank anymore."),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
