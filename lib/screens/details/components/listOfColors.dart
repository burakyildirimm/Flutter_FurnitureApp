import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'colorDots.dart';


class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDots(
            fillColor: Color(0xFF80989A),
            isSelected: true,
          ),
          ColorDots(
            fillColor: Color(0xFFFF5200),
          ),
          ColorDots(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}


