class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "Iphone 12",
      description: "A phone",
      price: 999,
      image: "",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.color,
      this.image});
}
