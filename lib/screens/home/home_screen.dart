import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture/constants.dart';
import 'package:furniture/screens/home/components/boby.dart';
import 'package:furniture/size_config.dart';

class HomeScreem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // it help us to make our UI responsive
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            height: SizeConfig.defaultSize * 2, // 20
          ),
          onPressed: () {}),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/scan.svg",
              height: SizeConfig.defaultSize * 2.4, // 20
            ),
            onPressed: () {}),
        Center(
          child: Text(
            "Scan",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: SizeConfig.defaultSize)
      ],
    );
  }
}
