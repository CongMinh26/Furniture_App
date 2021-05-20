import 'package:flutter/material.dart';

import 'package:furniture/screens/home/components/recomend_product.dart';
import 'package:furniture/screens/home/components/title.dart';
import 'package:furniture/services/fetchCategories.dart';
import 'package:furniture/services/fetchProducts.dart';
import 'package:furniture/size_config.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(
                title: "Browse by Categories",
              ),
            ),
            FutureBuilder(
              future: fetchCategories(),
              builder: (context, snapshot) => snapshot.hasData
                  ? Categories(
                      categories: snapshot.data,
                    )
                  : Center(
                      child: Image.asset("assets/ripple.gif"),
                    ),
            ),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: Divider(
                height: 5,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: TitleText(
                title: "Recommands For You",
              ),
            ),
            FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) => snapshot.hasData
                  ? ProductReCommand(
                      products: snapshot.data,
                    )
                  : Center(
                      child: Image.asset("assets/ripple.gif"),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
