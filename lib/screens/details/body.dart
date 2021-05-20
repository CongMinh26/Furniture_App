import 'package:flutter/material.dart';
import 'package:furniture/models/Product.dart';
import 'package:furniture/screens/details/product_description.dart';
import 'package:furniture/screens/details/product_info.dart';

import '../../size_config.dart';

class BodyDetail extends StatelessWidget {
  const BodyDetail({Key key, this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: SizeConfig.orientation == Orientation.landscape
            ? SizeConfig.screenWidth
            : SizeConfig.screenHeight - AppBar().preferredSize.height,
        child: Stack(
          children: <Widget>[
            ProductInfo(product: product),
            Positioned(
              top: defaultSize * 37.5,
              left: 0,
              right: 0,
              child: ProductDescription(
                product: product,
                press: () {},
              ),
            ),
            Positioned(
              top: defaultSize * 9.5,
              right: -defaultSize * 7.5,
              child: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                  height: defaultSize * 37.8,
                  width: defaultSize * 36.4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
