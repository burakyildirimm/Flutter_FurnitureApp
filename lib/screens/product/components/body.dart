import 'package:flutter/material.dart';
import 'package:furnitureapp/components/searchBox.dart';
import 'package:furnitureapp/constants.dart';
import 'package:furnitureapp/screens/product/components/productListView.dart';
import 'categoryList.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {},),
          Categorylist(),
          SizedBox(height: kDefaultPadding / 2,),
          Expanded(child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),

              // Product Background Container
              ProductListView(),
            ],
          ))
        ],
      ),
    );
  }
}






