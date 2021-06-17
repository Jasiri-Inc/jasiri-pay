import 'package:flutter/material.dart';
import 'package:lipa_rahaa/src/modules/home/models/Category.dart';
import 'package:lipa_rahaa/src/constants/constants.dart';


import '../../models/Category.dart';




class CategoryList extends StatefulWidget {
  static List<String> cafeteriaName = CategoryModel().categoryName;

  CategoryList({
    Key key,
  }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: 70,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: CategoryList.cafeteriaName.length,
          itemBuilder: (BuildContext context, index) => buildCategoryItem(index, CategoryList.cafeteriaName[index])
          // {
          //   return CategoryItem(
          //     title: CategoryList.cafeteriaName[index],
          //     index: index,
          //     // isActive: true,
          //     press: () {},
          //   );
          // },
        ),
      ),
    );





  }

    Widget buildCategoryItem(int index, String title){
      void onSelect (){
    setState(() {
     selectedIndex = index;
    });
  }
      return GestureDetector(
      onTap: onSelect,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: selectedIndex == index
                  ? TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    )
                  : TextStyle(fontSize: 12),
            ),
            if ( selectedIndex == index)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ],
        ),
      ),
    );
    }

}
