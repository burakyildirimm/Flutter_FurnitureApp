List <Product> Filteredproducts;
class Product {
  final int id, price;
  final String title, description, image, category;

  Product({this.id, this.price, this.title, this. description, this.image, this.category});
}

List <Product> products = [
  Product(
    id: 1,
    price: 108,
    title: "Klasik Tekli Koltuk",
    description: "Sandalye",
    image: "assets/images/tekli.png",
    category: "sandalye"
  ),
  Product(
      id: 2,
      price: 190,
      title: "Oturma Odası Koltuk",
      description: "Koltuk",
      image: "assets/images/lkoltuk.png",
      category: "koltuk"
  ),
  Product(
      id: 3,
      price: 50,
      title: "Avize",
      description: "Mutfak Avizesi",
      image: "assets/images/avize.png",
      category: "avize"
  )
];

List <Product> filteredproducts = products;