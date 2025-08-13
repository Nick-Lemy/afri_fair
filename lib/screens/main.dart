import 'package:flutter/material.dart';
import 'package:afri_fair/utils/colors.dart';

import '../utils/mock_products.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purple,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ProductList()
      ),

    );
  }
}
class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mockProducts.length,
      itemBuilder: (context, index) {
        final product = mockProducts[index];
        return ListTile(
          leading: Image.network(product.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
          title: Text(product.name),
          subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
        );
      },
    );
  }
}
