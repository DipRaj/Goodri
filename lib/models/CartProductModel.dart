class CartProductModel {
  final String image;
  final String price;
  final String name;
  final String amount;
  final int quantity;
  CartProductModel(
      {required this.amount,
      required this.image,
      required this.name,
      required this.price,
      required this.quantity});
}
