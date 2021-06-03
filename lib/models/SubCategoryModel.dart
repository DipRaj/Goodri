import 'package:gudri/models/ProductModel.dart';

class SubCategoryModel {
  final String image;
  final String title;
  final List<ProductModel> products;
  SubCategoryModel(
      {required this.image, required this.title, required this.products});
}
