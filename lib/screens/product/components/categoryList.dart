import 'package:flutter/material.dart';
import 'package:furnitureapp/models/product.dart';
import 'package:furnitureapp/screens/product/components/productListView.dart';

import '../../../constants.dart';


class Categorylist extends StatefulWidget {
  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {

  int selectedIndex = 0;
  List categories = ["All", "Koltuk", "Sandalye", "Avize"];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
              String selectedCat = categories[selectedIndex].toString().toLowerCase();

              filteredproducts = products.where((element) => element.category.contains(selectedCat)).toList();


            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                left: kDefaultPadding,
                right: index == categories.length -1 ? kDefaultPadding : 0
            ),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              categories[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

