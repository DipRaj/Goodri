import 'package:flutter/material.dart';
import 'package:gudri/models/ProductModel.dart';
import 'package:gudri/models/SubCategoryModel.dart';
import 'package:gudri/models/categoryModel.dart';
import 'package:gudri/screens/Category/CategoryParticular.dart';

// section title👇👇
class SectionTitle extends StatefulWidget {
  final String title;
  // final String trailTitle;
  SectionTitle({required this.title});
  @override
  _SectionTitleState createState() => _SectionTitleState();
}

class _SectionTitleState extends State<SectionTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          widget.title,
          style: TextStyle(
              fontWeight: FontWeight.w900, fontSize: 25, fontFamily: "Cabin"),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xffDEDEDE)),
              borderRadius: BorderRadius.all(Radius.circular(4))),
        )
      ],
    );
  }
}

// section end title 👇👇
class SectionEndTitle extends StatefulWidget {
  final String endTitle;
  const SectionEndTitle({required this.endTitle});
  @override
  _SectionEndTitleState createState() => _SectionEndTitleState();
}

class _SectionEndTitleState extends State<SectionEndTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffDEDEDE)),
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Text(
          widget.endTitle,
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20,
              fontFamily: "Cabin",
              color: Color(0xffDC6311)),
        ),
      ),
    );
  }
}

// product 👇👇
class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffDEDEDE)),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage("assets/images/nycil.png"),
          ),
          Text(
            "₹161",
            style: TextStyle(
              fontSize: 25,
              fontFamily: "Cabin",
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            "Soyabean Soyabean Soyabean Soyabean Soyabean",
            style: TextStyle(
              fontSize: 17,
              fontFamily: "Cabin",
              fontWeight: FontWeight.w500,
              color: Color(0xffA9A9A9),
            ),
          ),
          Text(
            "1 L",
            style: TextStyle(
                fontSize: 19,
                fontFamily: "Cabin",
                fontWeight: FontWeight.w600,
                color: Color(0xffA9A9A9)),
          ),
          Container(
            // height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(color: Color(0xffE96125)),
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
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffC0511D),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// category 👇👇
final List<CategoryModel> categoryList = [
  CategoryModel(
    image: "assets/images/logo.png",
    title: "Grocery & Staples",
    subCategoriesdesc: "sub categories description",
    subCategories: [
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Grocery & Staples 1",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Grocery & Staples 2",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Grocery & Staples 3",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Grocery & Staples 4",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/logo.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ])
    ],
  ),
  CategoryModel(
    image: "assets/images/shop.png",
    title: "Kitchening & Dining",
    subCategoriesdesc: "sub categories description",
    subCategories: [
      SubCategoryModel(
          image: "assets/images/shop.png",
          title: "Kitchening & Dining 1",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/shop.png",
          title: "Kitchening & Dining 2",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/shop.png",
          title: "Kitchening & Dining 3",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/shop.png",
          title: "Kitchening & Dining 4",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ])
    ],
  ),
  CategoryModel(
    image: "assets/images/logo.png",
    title: "Household Items",
    subCategoriesdesc: "sub categories description",
    subCategories: [
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Household Items 1",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Household Items 2",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Household Items 3",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Household Items 4",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ])
    ],
  ),
  CategoryModel(
    image: "assets/images/logo.png",
    title: "Personal Care",
    subCategoriesdesc: "sub categories description",
    subCategories: [
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Personal Care 1",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Personal Care 2",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Personal Care 3",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Personal Care 4",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ])
    ],
  ),
  CategoryModel(
    image: "assets/images/logo.png",
    title: "Fruits & Vegetables",
    subCategoriesdesc: "sub categories description",
    subCategories: [
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Fruits & Vegetables 1",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Fruits & Vegetables 2",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Fruits & Vegetables 3",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Fruits & Vegetables 4",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ])
    ],
  ),
  CategoryModel(
    image: "assets/images/logo.png",
    title: "Bevarages",
    subCategoriesdesc: "sub categories description",
    subCategories: [
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Bevarages 1",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Bevarages 2",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Bevarages 3",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ]),
      SubCategoryModel(
          image: "assets/images/logo.png",
          title: "Bevarages 4",
          products: [
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
            ProductModel(
                image: "assets/images/shop.png",
                name: "Product1",
                price: 344,
                quantity: 2,
                amount: 1),
          ])
    ],
  ),
];

class CategoryCard extends StatefulWidget {
  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: categoryList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ParticularCategoryScreen(
                          theSubCategories: categoryList[index].subCategories,
                        )),
              );
            },
            child: Container(
                // width: 90,
                // height: 200,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xff044a05),
                      width: 2.5,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage('${categoryList[index].image}'),
                      height: 120,
                    ),
                    Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Color(0xff044a05)
                            // borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                        child: Center(
                          child: Text(
                              '${categoryList[index].title}'.toUpperCase(),
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                        ))
                  ],
                )),
          );
        });
  }
}
