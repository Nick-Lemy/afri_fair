class Product{
  final String id;
  final String name;
  final String miniDescription;
  final String imageUrl;
  final double price;
  final String fullDescription;
  final double averageReview;
  final String category;
  final bool inStock;
  const Product({required this.imageUrl ,required this.id, required this.name, required this.miniDescription, required this.price, required this.inStock, required this.fullDescription, required this.averageReview, required this.category});

  Product copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? miniDescription,
    double? price,
    String? fullDescription,
    double? averageReview,
    String? category,
    bool? inStock,
}){
    return Product(
      id: id?? this.id,
      name: name?? this.name,
      imageUrl: imageUrl?? this.imageUrl,
      miniDescription: miniDescription?? this.miniDescription,
      price: price?? this.price,
      fullDescription: fullDescription?? this.fullDescription,
      averageReview: averageReview?? this.averageReview,
      category: category?? this.category,
      inStock: inStock?? this.inStock,
    );
  }

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json['id'] as String,
    name: json['name'] as String,
    imageUrl: json['imageUrl'] as String,
    price: (json['price'] as num).toDouble(),
    miniDescription: json['miniDescription'] as String,
    fullDescription: json['fullDescription'] as String,
    averageReview: json['averageReview'] == null ? 0 : (json['averageReview'] as num).toDouble(),
    inStock: json['inStock'] as bool? ?? true,
    category: json['category'] as String,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'imageUrl': imageUrl,
    'price': price,
    'miniDescription': miniDescription,
    'fullDescription': fullDescription,
    'averageReview': averageReview,
    'inStock': inStock,
    'category': category,
  };
}
