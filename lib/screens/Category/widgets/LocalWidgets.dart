import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gudri/models/SubCategoryModel.dart';
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
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffE9E9E9))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

// for sub category 👇👇👇
class SubCategoriesSection extends StatefulWidget {
  // final
  @override
  _SubCategoriesSectionState createState() => _SubCategoriesSectionState();
}

class _SubCategoriesSectionState extends State<SubCategoriesSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return Text("su");
          }),
    );
  }
}
