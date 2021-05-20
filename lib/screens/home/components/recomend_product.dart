import 'package:flutter/material.dart';
import 'package:furniture/models/Product.dart';
import 'package:furniture/screens/details/detail_screem.dart';
import 'package:furniture/screens/home/components/product_card.dart';

import '../../../size_config.dart';

class ProductReCommand extends StatelessWidget {
  const ProductReCommand({
    Key key,
    this.products,
  }) : super(key: key);

  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                SizeConfig.orientation == Orientation.portrait ? 2 : 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.693,
          ),
          itemBuilder: (context, index) => ProductCard(
                product: products[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreem(
                                product: products[index],
                              )));
                },
              )),
    );
  }
}
