class Products {
  Products({
   required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });

  String name;
  String image;
    String price;
  String quantity;

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "price": price,
        "quantity": quantity,
      };
}
