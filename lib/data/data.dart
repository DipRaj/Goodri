import 'package:gudri/models/notifications.dart';
import 'package:gudri/models/products.dart';

List<Products> productList = [
  Products(
      productId: "1",
      productTitle: "Fortune Oil",
      unit: [250, 500, 750],
      sellingPrice: 150,
      seller: "lorem ipsum",
      description:
          "Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum")
];

List<Notifications> notificationList = [
  Notifications(
    title: "We want you to keep that smile wide..",
    description:
        "Buy 3 get 1 free on Colgate MaxFresh Peppermint Ice Toothpaste. Keep smiling you!",
    timePeriod: "2",
  ),
];
