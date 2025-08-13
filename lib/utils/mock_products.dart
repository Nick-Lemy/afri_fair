import '../models/product.dart';

const _img =
    'https://external-preview.redd.it/dDjRPNb2AltV5BUrZ7K0TnxwFuxh7SClBSyr5vb0McM.jpg?auto=webp&s=926a019051745c7653eb04339c3f199f653b9f55';

final List<Product> mockProducts = [
  Product(
    id: '1',
    name: 'Gaming Laptop',
    miniDescription: 'High performance laptop',
    fullDescription:
    'A powerful gaming laptop with the latest graphics card, perfect for high-end games and professional work.',
    imageUrl: _img,
    price: 1299.99,
    averageReview: 4.8,
    category: 'Electronics',
    inStock: true,
  ),
  Product(
    id: '2',
    name: 'Wireless Headphones',
    miniDescription: 'Noise-cancelling',
    fullDescription:
    'Premium wireless headphones with active noise cancellation and long battery life.',
    imageUrl: _img,
    price: 199.99,
    averageReview: 4.6,
    category: 'Accessories',
    inStock: true,
  ),
  Product(
    id: '3',
    name: 'Smartphone',
    miniDescription: 'Latest model',
    fullDescription:
    'The newest smartphone with an amazing camera, sleek design, and powerful processor.',
    imageUrl: _img,
    price: 999.99,
    averageReview: 4.7,
    category: 'Electronics',
    inStock: false,
  ),
];
