import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gudri/models/ProductModel.dart';
import 'package:gudri/models/SubCategoryModel.dart';
import 'package:gudri/screens/Category/CategoryParticular.dart';
import 'package:gudri/screens/home_screen/localWidgets/LocalWidgets.dart';

// For category section 👇👇
class CategoryCard2Section extends StatefulWidget {
  @override
  _CategoryCard2SectionState createState() => _CategoryCard2SectionState();
}

class _CategoryCard2SectionState extends State<CategoryCard2Section> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      child: ListView.builder(
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: [
                  CategoryCard2(
                    title: '${categoryList[index].title}',
                    image: '${categoryList[index].image}',
                    description: '${categoryList[index].subCategoriesdesc}',
                    subCategories: categoryList[index].subCategories,
                  )
                ],
              ),
            );
          }),
    ));
  }
}

// for categorycard 👇👇
class CategoryCard2 extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final List<SubCategoryModel> subCategories;
  CategoryCard2(
      {required this.title,
      required this.description,
      required this.image,
      required this.subCategories});
  @override
  _CategoryCard2State createState() => _CategoryCard2State();
}

class _CategoryCard2State extends State<CategoryCard2> {
  bool subCategoryVisible = false;
  void showSubCategory() {
    setState(() {
      subCategoryVisible = !subCategoryVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: subCategoryVisible ? Color(0xffFFFBC7) : Colors.white),
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              showSubCategory();
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage(widget.image),
                  height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                          fontFamily: "Cabin",
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      widget.description,
                      style: TextStyle(
                        fontFamily: "Cabin",
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(width: 1.0, color: Colors.grey.shade200),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Icon(
                      subCategoryVisible
                          ? FontAwesomeIcons.chevronUp
                          : FontAwesomeIcons.chevronDown,
                      color: Color(0xffC7917C),
                    ),
                  ),
                )
              ],
            ),
          ),
          Visibility(
            visible: subCategoryVisible,
            child: Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 0.7),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.subCategories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ParticularCategoryScreen(
                                    theSubCategories: widget.subCategories,
                                  )),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffE9E9E9))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(
                                  '${widget.subCategories[index].image}'),
                              height: 80,
                            ),
                            Text(
                              '${widget.subCategories[index].title}',
                              style: TextStyle(
                                  fontFamily: "Cabin",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

// category particular product 👇👇
class CategoryParticularProduct extends StatefulWidget {
  final List<ProductModel> theProducts;
  CategoryParticularProduct({required this.theProducts});
  @override
  _CategoryParticularProductState createState() =>
      _CategoryParticularProductState();
}

class _CategoryParticularProductState extends State<CategoryParticularProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        decoration: BoxDecoration(
            color: Color(0xffECECEC),
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: ListView.builder(
          // physics: NeverScrollableScrollPhysics(),
          // shrinkWrap: true,
          itemCount: widget.theProducts.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.only(top: 12, left: 12, right: 12, bottom: 0),
              margin: EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: 150,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image(
                      image: AssetImage('${widget.theProducts[index].image}'),
                      height: 100,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '₹' + '${widget.theProducts[index].price.toString()}',
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: "Cabin",
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          '${widget.theProducts[index].name}',
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
                            Expanded(
                              flex: 3,
                              child: Text(
                                '9 L',
                                style: TextStyle(
                                    fontSize: 19,
                                    fontFamily: "Cabin",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffA9A9A9)),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Color(0xffE96125),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4),
                                            bottomLeft: Radius.circular(4),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "ADD",
                                            style: TextStyle(
                                                fontSize: 19,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Cabin"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffC0511D),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(4),
                                            bottomRight: Radius.circular(4),
                                          ),
                                        ),
                                        height: 30,
                                        child: Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
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
            );
          },
        ));
  }
}
