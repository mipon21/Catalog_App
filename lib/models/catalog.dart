class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 9",
        desc: "An apple mobile which is nothing like apple",
        price: 549,
        brand: "Apple",
        image: "https://dealsdaily.co.in/cdn/shop/products/MPD5544W_1_800x.jpg?v=1602303519"
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String brand;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.brand, required this.image});
}
