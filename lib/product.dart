class Product {
  String title;
  int price;
  String image;

  Product({required this.image, required this.price, required this.title});

  Product.fromJson(Map<String, dynamic> json)
      : title = '${json['title']}',
        price = json['price'],
        image = '${json['image']}';
}
