class ProductModel {
  final String image;
  final String name;
  final int price;
  final String descrption;

  ProductModel({
    required this.descrption,
    required this.image,
    required this.name,
    required this.price,
  });
  static List<ProductModel> items = [
    ProductModel(
      descrption: 'reversible angora cardigan',
      image: "assets/product/product6.png",
      name: 'Octobar',
      price: 460,
    ),
    ProductModel(
      descrption: 'reversible angora cardigan',
      image: "assets/product/product2.png",
      name: 'Octobar',
      price: 570,
    ),
    ProductModel(
      descrption: 'reversible angora cardigan',
      image: "assets/product/product3.png",
      name: 'Octobar',
      price: 940,
    ),
    ProductModel(
      descrption: 'reversible angora cardigan',
      image: "assets/product/product4.png",
      name: 'Octobar',
      price: 890,
    ),
    ProductModel(
      descrption: 'reversible angora cardigan',
      image: "assets/product/product5.png",
      name: 'Octobar',
      price: 600,
    ),
    ProductModel(
      descrption: 'reversible angora cardigan',
      image: "assets/product/product1.png",
      name: 'Octobar',
      price: 523,
    ),
  ];
}
