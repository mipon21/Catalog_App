class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String brand;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.brand, required this.image});
}
final products = [
  Item(
      id: "1",
      name: "iPhone 9",
      desc: "An apple mobile which is nothing like apple",
      price: 549,
      brand: "Apple",
      image: "https://i.dummyjson.com/data/products/1/thumbnail.jpg"
  )
];