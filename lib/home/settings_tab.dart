import 'package:flutter/material.dart';
import 'package:todoapp_2/my_theme.dart';
class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('language',
              style: Theme.of(context).textTheme.subtitle2),
          SizedBox(
            height: 18,
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: myThemeData.whitecolor),
            child: InkWell(
              onTap: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'english',
                      style: Theme.of(context).textTheme.subtitle2
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    size: 25,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text("Theme",
              style: Theme.of(context).textTheme.subtitle2),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                color: myThemeData.whitecolor),
            child: InkWell(
              onTap: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dark",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Icon(
                    Icons.arrow_drop_down_outlined,
                    size: 25,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
