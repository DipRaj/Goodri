import 'package:gudri/models/SubCategoryModel.dart';

class CategoryModel {
  final String image;
  final String title;
  final String subCategoriesdesc;
  final List<SubCategoryModel> subCategories;
  CategoryModel(
      {required this.image,
      required this.title,
      required this.subCategoriesdesc,
      required this.subCategories});
}
