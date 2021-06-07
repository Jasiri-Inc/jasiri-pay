import 'package:flutter/material.dart';
import 'package:lipa_rahaa/src/constants/constants.dart';





class CategoryItem extends StatefulWidget {
 
 CategoryItem({Key key, this.title, this.press}) : super(key: key);
  
  final String title;
  final Function press;
   


  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  
  bool isActive = false;
 
  
  void onSelect (){
    setState(() {
     isActive = !isActive ;
    });
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: <Widget>[
            Text(
              widget.title,
              style: isActive
                  ? TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                    )
                  : TextStyle(fontSize: 12),
            ),
            if (isActive)
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




