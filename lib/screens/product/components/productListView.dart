import 'package:flutter/material.dart';
import 'package:furnitureapp/models/product.dart';
import 'package:furnitureapp/screens/details/detailsView.dart';
import 'package:furnitureapp/screens/product/components/productCard.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({
    Key key,
  }) : super(key: key);

  @override
  _ProductListViewState createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: filteredproducts.length,
      itemBuilder: (context, index) => ProductCard(
        itemIndex: index,
        product: filteredproducts[index],
        press: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsView(product: filteredproducts[index],))
          );
        },
      ),
    );
  }
}