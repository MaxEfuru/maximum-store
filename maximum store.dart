dart
import 'package:flutter/material.dart';

void main() {
  runApp(maximum store());
}

class maximum store extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListPage(),
    );
  }
}

class ProductListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView(
        children: [
          ProductListItem(
            id: 1,
            name: 'Product 1',
            description: 'This is product 1.',
          ),
          ProductListItem(
            id: 2,
            name: 'Product 2',
            description: 'This is product 2.',
          ),
          ProductListItem(
            id: 3,
            name: 'Product 3',
            description: 'This is product 3.',
          ),
        ],
      ),
    );
  }
}

class ProductListItem extends StatelessWidget {
  final int id;
  final String name;
  final String description;

  const ProductListItem({
    required this.id,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(description),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(id: id),
          ),
        );
      },
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  final int id;

  const ProductDetailsPage({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Text('Product ID: $id'),
      ),
    );
  }
}
