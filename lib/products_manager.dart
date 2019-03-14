import 'package:flutter/material.dart';

import 'package:udemy_course/products.dart';
import 'package:udemy_course/product_button.dart';

class ProductsManager extends StatefulWidget {
  final String startingProduct;

  ProductsManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductsManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductButton(_addProduct),
        ),
        Products(_products),
      ],
    );
  }
}
