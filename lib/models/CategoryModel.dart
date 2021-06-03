import 'package:gudri/models/SubCategoryModel.dart';

class CategoryModel {
  String image;
  String title;
  String subCategoriesdesc;
  List<SubCategoryModel> subCategories;
  CategoryModel({
    required this.image,
    required this.title,
    required this.subCategories,
    required this.subCategoriesdesc,
  });
  // CategoryModel.hi({
  //   required this.image,
  //   required this.title,
  // });
}
