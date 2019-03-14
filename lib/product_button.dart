import 'package:flutter/material.dart';

class ProductButton extends StatelessWidget {
  final Function addProduct;

  ProductButton(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct('Another Food Tester');
      },
      child: Text('Add Product'),
    );
  }
}
