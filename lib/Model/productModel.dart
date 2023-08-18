class Products {
  Products({
   required this.name,
    required this.image, 
    required String quantity,
     required String price, 
  });

  String name;
  String image;
  String? price;
  String? quantity;
  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "price": price,
        "quantity": quantity,
      };
}
