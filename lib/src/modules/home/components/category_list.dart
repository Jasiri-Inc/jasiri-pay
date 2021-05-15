import 'package:flutter/material.dart';
import 'package:lipa_rahaa/src/modules/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "CHSS Cafe 3",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "CHSS Cafe 2",
            press: () {},
          ),
          CategoryItem(
            title: "CHSS Cafe 1",
            press: () {},
          ),
          CategoryItem(
            title: "CIVE Cafe ",
            press: () {},
          ),
        ],
      ),
    );
  }
}
