class Products {
  final String id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Products(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.color,
      this.image});

  final product = [
    Products(
      id: "Flutter01",
      name: "Iphone 12",
      description: "A phone",
      price: 999,
      image: "../../assets/image/login_image.png",
    )
  ];
}
