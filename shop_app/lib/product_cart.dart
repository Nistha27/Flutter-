import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title ;
  const ProductCard({
    super.key
    required this.title,
    });


  @override
  Widget build(BuildContext context) {
    return Container(
      child : Column(
        children: [
          Text(data)
        ],)
    );
  }
}