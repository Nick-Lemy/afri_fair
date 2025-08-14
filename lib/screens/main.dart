import 'package:flutter/material.dart';
import 'package:afri_fair/utils/colors.dart';

import '../utils/mock_products.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  // All your pages here
  final List<Widget> _pages = [
    Home(), // Home
    Center(child: Text("Search Page", style: TextStyle(fontSize: 20))),
    Center(child: Text("Favorites Page", style: TextStyle(fontSize: 20))),
    Center(child: Text("Account Page", style: TextStyle(fontSize: 20))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // change active page
          });
        },
        backgroundColor: AppColors.purple,
        selectedItemColor: AppColors.purpleAccented,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
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
          leading: Image.network(
            product.imageUrl,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(product.name),
          subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Row(
            spacing: 5,
            children: [
              Text(
                'Welcome back,',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              Text(
                'Nick!',
                style: TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Search for products...',
              hintStyle: TextStyle(fontSize: 14, color: AppColors.white),
              filled: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 25),
              fillColor: AppColors.purple,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none
              ),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.white, // change color to match your theme
              ),
            ),
          ),
          // Expanded(child: ProductList()),
        ],
      ),
    );
  }
}
