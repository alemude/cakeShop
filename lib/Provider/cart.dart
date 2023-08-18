class CartItem{
   String name;
   double price;
  int quantiry;
  String image;
CartItem({required this.name,
required this.price,required this.quantiry,
 required this.image, required Null Function() del});
 Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
      };
}
