import 'package:flutter/material.dart';
import 'package:lipa_rahaa/src/widgets/search_box.dart';
import 'package:lipa_rahaa/src/modules/home/components/category_list.dart';
import 'package:lipa_rahaa/src/modules/home/components/discount_card.dart';
import 'package:lipa_rahaa/src/modules/home/components/item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ItemList(),
          DiscountCard(),
        ],
      ),
    );
  }
}
