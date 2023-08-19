class Products {
  Products({
   required this.name,
    required this.image, 
    required this.quantity,
     required this.price, 
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
