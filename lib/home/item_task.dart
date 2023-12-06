import 'package:flutter/material.dart';
import 'package:todoapp_2/my_theme.dart';

class ItemTaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: myThemeData.whitecolor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: myThemeData.primaryLightColor,
            height: 80,
            width: 4,
          ),
          Column(children: [
            Text('Task Title',style:Theme.of(context).primaryTextTheme.headline3,),
            Text('Description',style:Theme.of(context).primaryTextTheme.headline2,)
          ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 21,vertical: 8),
            decoration: BoxDecoration(
              color: myThemeData.primaryLightColor,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(Icons.check,size: 40,color: myThemeData.whitecolor,),
          )


        ],
      ),
    );
  }
}
