import 'package:flutter/material.dart';

class SearchScreenMobile extends StatefulWidget {
  @override
  _SearchScreenMobileState createState() => _SearchScreenMobileState();
}

class _SearchScreenMobileState extends State<SearchScreenMobile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        // height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildSearchContainer(size, "Search History"),
            SizedBox(
              height: 5.0,
            ),
            buildSearchContainer(size, "Trending Searches"),
          ],
        ),
      ),
    );
  }

  Card buildSearchContainer(Size size, String searchFilterText) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
        height: size.height * 0.2,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Text(searchFilterText),
            ),
            Expanded(
              flex: 3,
              child: Container(
                  child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  childAspectRatio: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                ),
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 30,
                    width: 20,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Center(
                      child: Text("Watch Out"),
                    ),
                  );
                },
              )),
            )
          ],
        ),
      ),
    );
  }

//App Bar
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff00008b),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      title: TextFormField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ],
    );
  }
}
